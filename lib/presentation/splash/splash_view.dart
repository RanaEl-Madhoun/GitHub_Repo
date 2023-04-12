import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app/app.dart';
import '../ResourceManager/asset_manager.dart';
import '../ResourceManager/color_manager.dart';
import '../ResourceManager/constants_manager.dart';



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
    // TODO: implement build
   return Scaffold(
   backgroundColor: ColorManager.primary,
   body: const Center(
    child: 
     Image(image: AssetImage(ImageAssets.splashLogo),)),
   );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    super.dispose();
  }
}
