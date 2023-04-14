import 'dart:developer';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_repo/domain/helper/user_helper.dart';

import 'package:github_repo/domain/models/user_details.dart';

class UserProvider extends ChangeNotifier{
  UserProvider(){
    getUsers();
    searchController = TextEditingController();
  }
  bool isLoading=false;
 
  late TextEditingController searchController;
List<Items> userdetails=[];
List<Items> searchedusers=[];

  Future <void> getUsers()async{
    isLoading=true;
      userdetails=[];

    notifyListeners();
    // notifyListeners();
    final response=await UserHelper.userhelper.getUsers();
  
    userdetails.addAll(response.items??[]);
   
    isLoading=false;
    notifyListeners();
    
    log("get user from provider");
    log(userdetails.length.toString());

  }
 Future<void> refreshRepositories() async {
    await getUsers();
  }
  searchUsers(String value)async{
     isLoading=true;
      searchedusers=[];

    notifyListeners();
   
    final response=await UserHelper.userhelper.searchUsers(value);
  
    searchedusers.addAll(response.items??[]);
   
    isLoading=false;
    notifyListeners();

    log(userdetails.length.toString());


  }
   
  
}