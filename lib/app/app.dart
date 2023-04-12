import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:github_repo/domain/helper/user_helper.dart';
import 'package:github_repo/domain/models/user_details.dart';
import 'package:github_repo/domain/provider/user_provider.dart';
import 'package:github_repo/presentation/pagewidget/git_widget.dart';
import 'package:provider/provider.dart';

class MyHome extends StatelessWidget{


  
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
       builder: (context, Provider, child){
       return 
       Scaffold(
           appBar: AppBar(
         title: const Text('Github Repositories'),
),
             body:


                   
 ListView.builder(
  shrinkWrap:true,
  itemCount: Provider.userdetails.length,
  itemBuilder: (context, index) {
   return GitWidget(Provider.userdetails[index]);
  }
 

),
floatingActionButton: FloatingActionButton(
  onPressed: Provider.refreshRepositories,
  tooltip: 'Refresh',
  child: const Icon(Icons.refresh),
       
 ),
                      
                         
                      
                 
                
            
          
       );

       }
    );
      
  }}
  
// Widget build(BuildContext context) {
//     return Consumer<UserProvider>(
//       builder: (context, Provider, child){
//         return Scaffold(
//         appBar: AppBar(
//           title: const Text('Github Repositories'),
//         ),
//         body: Provider.isLoading
//             ? const Center(child: CircularProgressIndicator())
//             : RefreshIndicator(
//                 onRefresh: Provider.refreshRepositories,
//                 child: ListView.builder(
//   shrinkWrap:true,
//   itemCount: Provider.userdetails.length,
//   itemBuilder: (context, index) {
//    return GitWidget(Provider.userdetails[index]);
//   }
 

// )
//               ),
//       );
//  } );
//   }


  
  
  
  
