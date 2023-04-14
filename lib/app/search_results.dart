import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:github_repo/domain/helper/user_helper.dart';
import 'package:github_repo/domain/models/user_details.dart';
import 'package:github_repo/domain/provider/user_provider.dart';
import 'package:github_repo/presentation/pagewidget/git_widget.dart';
import 'package:github_repo/presentation/searchbar/search.dart';
import 'package:github_repo/presentation/searchbar/searchbar_view.dart';
import 'package:provider/provider.dart';

import '../presentation/searchbar/search_users.dart';

class SearchResults extends StatelessWidget{


  
  Widget build(BuildContext context) {
    return Consumer<UserProvider> (
       builder: (context, Provider, child){
        return
     (Provider.searchedusers.isEmpty)?
     const Scaffold(
      body: Center(
        child:CircularProgressIndicator()),)
      
       :Scaffold(
                    body:


                   
 SingleChildScrollView(
   child: Column(
     children: [
    
       SizedBox(
        height: 1000,
         child: Expanded(
           child:  ListView.builder (
            shrinkWrap:true,
            itemCount:  Provider.searchedusers.length,
            itemBuilder: (context, index) {
             return GitWidget(Provider.searchedusers[index]);
            }
           
              
              ),
         ),
       ),
     ],
   ),
 ),

                      
                         
                      
                 
                
            
          
       );

       }
    );
      
  }}
  


  
  
  
  
