
import 'package:flutter/material.dart';

import 'package:github_repo/domain/provider/user_provider.dart';
import 'package:github_repo/presentation/resources/color_manager.dart';
import 'package:github_repo/presentation/pagewidget/git_widget.dart';
import 'package:provider/provider.dart';

import '../presentation/resources/values_manager.dart';
import '../presentation/searchbar/search_users.dart';

class MyHome extends StatelessWidget{
  
  Widget build(BuildContext context) {
     double appheight=MediaQuery.of(context).size.height;
    return Consumer<UserProvider>(
       builder: (context, Provider, child){
            return  ( Provider.userdetails.isEmpty)?
   const   Scaffold(
      body: Center(
        child:CircularProgressIndicator()),)
   
      : Scaffold(
           
             body:


                   
 SingleChildScrollView(
   child: SafeArea(
    
       child: Column(
       
         children: [
        const  SizedBox(height: 20,),
         Container(
          margin: EdgeInsets.only(left:MarginManger.m14,right: MarginManger.m14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizeManger.s20),
             border: Border.all(
          color: ColorManager.bordergrey,
          width: 1.0,
        ),
           
          ),
          child: SearchUsers()),
           SizedBox(
            height: appheight/AppSizeManger.s0_7,
             child: Expanded(
               child: ListView.builder(
                shrinkWrap:true,
                itemCount: Provider.userdetails.length,
                itemBuilder: (context, index) {
                 return GitWidget(Provider.userdetails[index]);
                }
               
                  
                  ),
             ),
           ),
         ],
       ),
     
   ),
 ),
floatingActionButton: FloatingActionButton(
  backgroundColor: ColorManager.black,
  onPressed: Provider.refreshRepositories,
  tooltip: 'Refresh',
  child: const Icon(Icons.refresh),
       
 ),
                      
                         
                      
                 
                
            
          
       );

       }
    );
      
  }}
  

  
  
