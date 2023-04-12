
// import 'package:advance_course/presentaition/ResourceManager/strings_manager.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import '../forget_password/ForgotPasswordView.dart';
// import '../login/LoginView.dart';
// import '../main/MainView.dart';
// import '../onboarding/OnBoardingView.dart';
// import '../register/RegisterView.dart';
// import '../store_detils/StoreDetailsView.dart';
// import '../splash/splash_view.dart';

// class Routes {
//   static const String splashRoute = "/";
//   static const String loginRoute = "/login";
//   static const String registerRoute = "/register";
//   static const String forgotPasswordRoute = "/forgotPassword";
//   static const String onBoardingRoute = "/onBoarding";
//   static const String mainRoute = "/main";
//   static const String storeDetailsRoute = "/storeDetails";
// }

// class RouteGenerator {
//   static Route<dynamic> getRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case Routes.splashRoute:
//         return MaterialPageRoute(builder: (_) => const SplashView());
//       case Routes.loginRoute:
//         return MaterialPageRoute(builder: (_) => const LoginView());
//       case Routes.onBoardingRoute:
//         return MaterialPageRoute(builder: (_) => const OnBoardingView());
//       case Routes.registerRoute:
//         return MaterialPageRoute(builder: (_) => const RegisterView());
//       case Routes.forgotPasswordRoute:
       
//         return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
//       case Routes.mainRoute:
//         return MaterialPageRoute(builder: (_) => const MainView());
//       case Routes.storeDetailsRoute:
//         return MaterialPageRoute(builder: (_) => const StoreDetailsView());
//       default:
//         return unDefinedRoute();
//     }
//   }

//   static Route<dynamic> unDefinedRoute() {
//     return MaterialPageRoute(
//         builder: (_) => Scaffold(
//               appBar: AppBar(
//                 title: Text(AppStrings.noRouteFound),
//               ),
//               body: Center(child: Text(AppStrings.noRouteFound)),
//             ));
//   }
// }