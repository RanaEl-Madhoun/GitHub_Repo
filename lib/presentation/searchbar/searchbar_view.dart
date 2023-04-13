import 'dart:developer';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'package:flutter/material.dart';
import 'package:github_repo/domain/models/user_details.dart';
import 'package:github_repo/domain/provider/user_provider.dart';
import 'package:provider/provider.dart';

class Searchbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
 return Consumer<UserProvider>(
   builder: (BuildContext context, recipepro, Widget? child) {
    return Container(
    width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
             color: Color.fromARGB(255, 255, 253, 253), 
             borderRadius: BorderRadius.circular(5),
             boxShadow: [
              BoxShadow(
                 color: Color.fromARGB(255, 188, 187, 187).withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 7,
          offset: Offset(0, 3), 
              )
             ],
            
             ),
             child: Center(
              child: TypeAheadField<Items?>(
                textFieldConfiguration: TextFieldConfiguration(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                //  border: OutlineInputBorder(),
                  hintText: 'Search ',
                ),
              ),
                onSuggestionSelected: (Items?suggestion) async{
      //              await recipepro.getAnalyzed(suggestion!.id!);
      // await recipepro.getRecipeIngredients(suggestion.id!);
      // await recipepro.getInfo(suggestion.id!);

      //             AppRouter.NavigateToWidget(IngredScreen());
                  
                },
                noItemsFoundBuilder: (context) {
               return   Container(height:100,child: Center(child: Text("No Results found"),));
                },
                itemBuilder: (context, Items?suggestion) {
                  final result=suggestion!;
                  return ListTile(
                    title: Text(""),
                  );

                },
                suggestionsCallback: (pattern)async {
                return await recipepro.searchUsers(pattern);
              },

              ),
           
          ),
              );
     },
   
 );
           
           
 
  }


}