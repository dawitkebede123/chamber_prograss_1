import 'package:chamber_of_commerce/widgets/SearchMoreIcon.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            margin:const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
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
          );
  }
}