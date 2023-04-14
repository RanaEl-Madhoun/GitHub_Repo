
import 'package:flutter/cupertino.dart';

import 'fonts_manager.dart';

TextStyle _getTextStyle(double fontsize,FontWeight fontWeight,Color color){
  return TextStyle(
    fontSize: fontsize,
    fontWeight: fontWeight,
    color: color
  );
 
}
//Reguler
 TextStyle getRegulerStyle({
    double fontSize=FontSizeManger.s12,
    required Color color
    })
    {
    return _getTextStyle(fontSize, FontWeightManger.Reguler, color);
  }
  TextStyle getMediumrStyle({
    double fontSize=FontSizeManger.s14,
    FontWeight:FontWeightManger.Medium,

    required Color color
    })
    {
    return _getTextStyle(fontSize, FontWeightManger.Medium, color);
  }
  //Bold
  TextStyle getBoldStyle({
    double fontSize=FontSizeManger.s14,
    required Color color
    })
    {
    return _getTextStyle(fontSize, FontWeightManger.Bold, color);
  }
  //Light
  TextStyle getRLightStyle({
    double fontSize=FontSizeManger.s12,
    required Color color
    })
    {
    return _getTextStyle(fontSize, FontWeightManger.Light, color);
  }
  //Semi Bold
  TextStyle getSemiBoldStyle({
    double fontSize=FontSizeManger.s12,
    required Color color
    })
    {
    return _getTextStyle(fontSize, FontWeightManger.SemiBold, color);
  }