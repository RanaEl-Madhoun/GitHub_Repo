import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:github_repo/domain/helper/user_helper.dart';

import 'package:github_repo/domain/models/user_details.dart';

class UserProvider extends ChangeNotifier{
  UserProvider(){
    getUsers();
  }
  bool isLoading=false;
List<Items> userdetails=[];

  Future <void> getUsers()async{
    isLoading=true;
      userdetails=[];

    notifyListeners();
    // notifyListeners();
    final response=await UserHelper.userhelper.getUsers();
  
    userdetails.addAll(response.items??[]);
   
    isLoading=false;
    notifyListeners();
    // Autogenerated users = await UserHelper.userhelper.getUsers();
    // userdetails.addAll(users.items??[]);
    // log(userdetails.length.toString());
    log("get user from provider");
    log(userdetails.length.toString());

  }
 Future<void> refreshRepositories() async {
    await getUsers();
  }
   
  
}