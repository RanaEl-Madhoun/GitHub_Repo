import 'package:flutter/material.dart';
import 'package:github_repo/app/search_results.dart';
import 'package:github_repo/domain/provider/user_provider.dart';
import 'package:github_repo/presentation/resources/color_manager.dart';
import 'package:github_repo/presentation/resources/styles_manager.dart';
import 'package:provider/provider.dart';

import '../resources/strings_manager.dart';

class SearchUsers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<UserProvider>(
      builder: (BuildContext context, provider, Widget? child) { 
  return  TextField(
      controller: provider.searchController,
     decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:AppStrings.searchhint ,
                        hintStyle:getMediumrStyle(color: ColorManager.grey),

                  suffixIcon: IconButton(
                    onPressed: () {
              provider.searchUsers(provider.searchController.text);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return SearchResults();
                    }));
                provider.searchController.clear();

                    },
                    icon: const Icon(Icons.search),
                  ),
                ),
    );
       },
    
    );
  }

}
void main(List<String> args) {
  runApp(MaterialApp(home: SearchUsers(),));
}