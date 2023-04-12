import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:github_repo/domain/models/user_details.dart';
import 'package:github_repo/presentation/ResourceManager/values_manager.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../ResourceManager/styles_manager.dart';

class GitWidget extends StatelessWidget{
  GitWidget(
   
    
     this.using
    );
    Items using;
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     double appwidth=MediaQuery.of(context).size.width;
     double appheight=MediaQuery.of(context).size.height;
    double appwidthweb=MediaQuery.of(context).size.width/AppSizeManger.s2;
     double appheightweb=MediaQuery.of(context).size.height/AppSizeManger.s3;
      double appheightmobo=MediaQuery.of(context).size.height/AppSizeManger.s5;
  return GestureDetector(
    onTap: (() {
     launchUrlString(using.htmlUrl??"");
    }),
    child: Container(
      margin: EdgeInsets.all(MarginManger.m12),
         padding: EdgeInsets.all(PaddingManger.p12),
         width: appwidthweb,
         height: kIsWeb ?appheightweb:appheightmobo,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppSizeManger.s16),
         color: Color.fromARGB(255, 151, 148, 148).withOpacity(.1) ),
      child: Column(
         mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            
            child: Text(using.fullName??"",style: getBoldStyle(color: Colors.black))
            ),
          Divider(),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
             
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(using.owner?.avatarUrl??"")
                  ), // to do : bring user image avater
              ),
              Container(
                padding: EdgeInsets.all(PaddingManger.p8),
                margin: EdgeInsets.all(MarginManger.m8),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            Text(using.owner?.login??"",style: getMediumrStyle(color: Colors.black),),
            Container(
              width:250 ,
              height: 50,
              child: Expanded(
                child: Text(using.description??'',
                                         overflow: TextOverflow.visible,),
              ),
            ),
            
            
                //  Row(
                //    children: [
                //      Expanded(
                //       child: OverflowBox(
                //         maxWidth: double.infinity,
                //         child: Text(using.description??'',
                //          overflow: TextOverflow.visible,),
                //       ),
                       
                //       ),
                //    ],
                //  ),

                    //  Container(
                    //   margin: EdgeInsets.all(5),
                    //   height:60 ,
                    //   width: 150,
                    //    child: Row(
                    //      children: [
                    //        Expanded(
                    //         child: OverflowBox(
                    //           child: Text(using.description??'',
                    //                  overflow: TextOverflow.visible,),
                    //         ),
                    //                    ),
                    //      ],
                    //    ),
                    //  ),
                
                    
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
  }

}