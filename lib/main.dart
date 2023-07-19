import 'package:flutter/material.dart';
import 'package:github_repo/domain/provider/user_provider.dart';

import 'package:github_repo/presentation/splash/splash_view.dart';
import 'package:provider/provider.dart';


void main()async {
WidgetsFlutterBinding.ensureInitialized();

  runApp(
     ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider(),
        child: const MyApp(),
          ),
      
      
    
  );
}


class MyApp extends StatelessWidget {

  const MyApp({Key? key,
 
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     
    return MaterialApp(
    
       
        debugShowCheckedModeBanner: false,
        title: 'Flutter Auth',
       
        
      
    // home: SearchUsers(),
    
      home: SplashView()
  
        
       
      );
   
  }
}

