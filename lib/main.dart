import 'package:flutter/material.dart';
import 'package:github_repo/domain/provider/user_provider.dart';
import 'package:github_repo/presentation/splash/splash_view.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';

// void main() async{
//    WidgetsFlutterBinding.ensureInitialized();
//   runApp( Provider(create: ( (context) {
//      ChangeNotifierProvider<UserProvider>(create: (BuildContext context) { 
//         return UserProvider();
//        },);

//   }
//   ),
//   child: MyApp(),
//   )
 
//   );
// }

void main()async {
WidgetsFlutterBinding.ensureInitialized();

  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the provid ers

      
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
       
        
      
    
      home: SplashView()
  
        
       
      );
   
  }
}

