

import 'package:flutter/material.dart';

import 'package:github_repo/domain/provider/user_provider.dart';
import 'package:github_repo/presentation/pagewidget/git_widget.dart';

import 'package:provider/provider.dart';


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
  


  
  
  
  
