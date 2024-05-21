import 'package:chamber_of_commerce/pages/user/CompanyDetail.dart';
import 'package:chamber_of_commerce/widgets/SearchMoreIcon.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
   final _searchController = TextEditingController();
  String _searchTerm = '';
  bool _showListView = false;
   Stream<DatabaseEvent>? _userStream;
   
   void clearSearch() {
    setState(() {
      _searchController.clear();
      _searchTerm = ''; // Optionally reset _searchTerm as well
      //  _searchStreamController.sink.add(''); 
    });
  }
  @override
  void initState() {
    super.initState();
    try {
    _userStream = FirebaseDatabase.instance.ref('Query7').onValue;
  } on FirebaseException catch (e) {
    print('Firebase error: ${e.code} - ${e.message}');
    // Handle the error appropriately, potentially display a user-friendly message
  }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
    void _searchCompany(String searchTerm) {
    setState(() {
      _searchTerm = searchTerm.toLowerCase();
    });
  }
  @override
  Widget build(BuildContext context) {
              //  height:54;
              // margin:const EdgeInsets.all(10);
    return  Column(
      children: [
TextField(
             
             
              onChanged:(value){
                 if(value.isEmpty){
                  clearSearch();
                 }
                setState(() {
                  _showListView = value.isNotEmpty;
                });
                _searchCompany(value);
              },
              //  controller: _searchController,
              //  onPre
              decoration: InputDecoration(
              
                //  onPressed: () => _searchController.clear(),
                filled: true,
                fillColor: const Color.fromARGB(255,229,234,232),
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(50),
                  borderSide: BorderSide.none
                  ),
                  contentPadding: const EdgeInsets.all(15),
                  hintText: 'search',
                  suffixIcon: Container(
                   width: 200,
                   child: const IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Padding(
                        padding: EdgeInsets.all(8.0),
                       
                        child: Icon(Icons.search),
                        ),
                         Padding(
                        padding: EdgeInsets.all(8.0),
                       

                        child: SearchFieldMoreIcon(),
                       
                        ),
                        
                      ],
                    ),
                   ),
                   
                  )
              ),
            ),
             if(_showListView)
            StreamBuilder<DatabaseEvent>(
        stream: _userStream,
        builder: (context, snapshot) {
         return Container(
               height: 200.0, // Adjust height as needed
      // color: Color.fromARGB(255, 142, 139, 139), // Optional background color
          child: _buildContent(snapshot),
            );

        }),
        // Placeholder(),
        // clearSearch();
      ],
                 
          
            
          );
  }
   Widget _buildContent(AsyncSnapshot<DatabaseEvent> snapshot) {
  if (snapshot.hasError) {
    return Center(
      child: Text('Error: ${snapshot.error}'),
    );
  }

  if (snapshot.connectionState == ConnectionState.waiting) {
    return const Center(child: CircularProgressIndicator());
  }

  final data = snapshot.data!.snapshot.value as List<dynamic>;

  if (data.isEmpty) {
    return const Center(child: Text('No businesses found'));
  }

  final filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Campany Name']?.toString().toLowerCase() ?? '';
    return _searchTerm.isEmpty || companyName.startsWith(_searchTerm) ? [element] : [];
  }).toList();

  return ListView.builder(
    itemCount: filteredBusinesses.length,
    itemBuilder: (context, index) {
      final businessData = filteredBusinesses[index];
      final name = businessData['Campany Name'];
      // final email = businessData['E-mail'];
      // Extract business information based on your data structure
      return ListTile(
        title: Text(name),
        // subtitle: Text(email),
        onTap: () {
          // Navigate to CompanyDetailsScreen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>CompanyDetail(),
              // CompanyDetail(data: businessData),
            ),
          );
        },
      );
    },
  );
}

}