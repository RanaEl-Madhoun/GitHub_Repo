import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_repo/presentation/resources/values_manager.dart';

import '../../app/app.dart';
import '../resources/asset_manager.dart';
import '../resources/color_manager.dart';
import '../resources/constants_manager.dart';



class SplashView extends StatefulWidget{
  const SplashView({Key? key}) :super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
Timer ?_timer;


_startDelay(){
  _timer= Timer(const Duration(seconds: AppConstants.splashDelay), _goNextPage);
}
_goNextPage(){
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return MyHome();}));
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();

  }
  
  
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
   backgroundColor: ColorManager.white,
   body: Center(
    child: 
     Container(
     margin:const EdgeInsets.all(MarginManger.m26),
     padding:const EdgeInsets.all(PaddingManger.p20),
      child: const Image(image: AssetImage(ImageAssets.splashLogo),))),
   );
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
