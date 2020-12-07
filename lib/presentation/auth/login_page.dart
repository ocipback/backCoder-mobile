// import 'package:flutter/material.dart';
// import 'package:publish/application/models/sign_in_modal.dart';
// import 'package:publish/router/route_constants.dart';
// import 'package:publish/values/images.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// class LoginPage extends StatefulWidget {
//   LoginPage({Key key}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     print("nuild");
//     return Scaffold(
//       key: _key,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//         brightness: Brightness.light,
//         automaticallyImplyLeading: false,
//       ),
//       body: Injector(
//         inject: [Inject<SignInFormModel>(() => SignInFormModel())],
//         builder: (context) {
//           final _singletonSignInFormModel = RM.get<SignInFormModel>();
//           return Container(
//             padding: EdgeInsets.all(16),
//             child: ListView(
//               children: <Widget>[
//                 Container(
//                   height: 250,
//                   child: Center(
//                     child: Image.asset(Images.logo),
//                   ),
//                 ),
//                 StateBuilder<SignFormModel>(
//                   builder: (context, signInFormModel) {
//                     return TextFormField(
//                       onChanged: (String email) {
//                         signInFormModel.setState(
//                             (state) => state.setEmail(email),
//                             catchError: true);
//                       },
//                       decoration: InputDecoration(
//                         errorText: signInFormModel.hasError
//                             ? signInFormModel.error.message
//                             : null,
//                         prefixIcon: Icon(Icons.email),
//                         hintText: "Enter your email",
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//                 buildSizedBox(15),
//                 StateBuilder<SignFormModel>(
//                   builder: (_, signFormModel) {
//                     return TextFormField(
//                       onChanged: (String password) {
//                         signFormModel.setState(
//                             (state) => state.setPassword(password),
//                             catchError: true);
//                       },
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         errorText: signFormModel.hasError
//                             ? signFormModel.error.message
//                             : null,
//                         prefixIcon: Icon(Icons.lock),
//                         hintText: "Enter your password",
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30)),
//                       ),
//                     );
//                   },
//                 ),
//                 buildSizedBox(25),
//                 StateBuilder(
//                   observe: () => _singletonSignInFormModel,
//                   builder: (_, model) {
//                     return MaterialButton(
//                       onPressed: () {
//                         if (!_singletonSignInFormModel.state.validateData()) {
//                           showSnackbar(
//                               color: Colors.red,
//                               key: _key,
//                               message:
//                                   "Data is invalid, please fill the form before submitting!");
//                         } else {
//                           _singletonSignInFormModel.setState(
//                             (signInFormState) async {
//                               await signInFormState.submitSignIn();
//                               Navigator.pushNamed(context, homeRoute);
//                             },
//                             onError: (context, error) => showSnackbar(
//                                 color: Colors.red,
//                                 key: _key,
//                                 message: "${error.message}"),
//                           );
//                         }
//                       },
//                       height: 55,
//                       shape: StadiumBorder(),
//                       color: Theme.of(context).primaryColor,
//                       child: Center(
//                         child: Text(
//                           "Sign In",
//                           style: TextStyle(color: Colors.white, fontSize: 30),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//                 buildSizedBox(20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     Text("Don't have an account ? "),
//                     FlatButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, registerRoute);
//                       },
//                       child: Text(
//                         "Sign Up",
//                         style: TextStyle(color: Theme.of(context).primaryColor),
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }

//   SizedBox buildSizedBox(double height) {
//     return SizedBox(
//       height: height,
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:publish/application/models/sign_in_modal.dart';
// import 'package:publish/router/route_constants.dart';
// import 'package:publish/values/images.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// class LoginPage extends StatefulWidget {
//   LoginPage({Key key}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     print("nuild");
//     return Scaffold(
//       key: _key,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//         brightness: Brightness.light,
//         automaticallyImplyLeading: false,
//       ),
//       body: Injector(
//         inject: [Inject<SignInFormModel>(() => SignInFormModel())],
//         builder: (context) {
//           final _singletonSignInFormModel = RM.get<SignInFormModel>();
//           return Container(
//             padding: EdgeInsets.all(16),
//             child: ListView(
//               children: <Widget>[
//                 Container(
//                   height: 250,
//                   child: Center(
//                     child: Image.asset(Images.logo),
//                   ),
//                 ),
//                 StateBuilder<SignFormModel>(
//                   builder: (context, signInFormModel) {
//                     return TextFormField(
//                       onChanged: (String email) {
//                         signInFormModel.setState(
//                             (state) => state.setEmail(email),
//                             catchError: true);
//                       },
//                       decoration: InputDecoration(
//                         errorText: signInFormModel.hasError
//                             ? signInFormModel.error.message
//                             : null,
//                         prefixIcon: Icon(Icons.email),
//                         hintText: "Enter your email",
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//                 buildSizedBox(15),
//                 StateBuilder<SignFormModel>(
//                   builder: (_, signFormModel) {
//                     return TextFormField(
//                       onChanged: (String password) {
//                         signFormModel.setState(
//                             (state) => state.setPassword(password),
//                             catchError: true);
//                       },
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         errorText: signFormModel.hasError
//                             ? signFormModel.error.message
//                             : null,
//                         prefixIcon: Icon(Icons.lock),
//                         hintText: "Enter your password",
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30)),
//                       ),
//                     );
//                   },
//                 ),

import 'package:flutter/material.dart';
import 'package:publish/values/images.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        // tampilkan status bar hp batrai dan notofication
        brightness: Brightness.light,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            Container(
              height: 250,
              child: Center(
                child: Image.asset(Images.logo),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.orange,
                ),
                hintText: "Enter your email address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.orange,
                ),
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () {},
              height: 50,
              shape: StadiumBorder(),
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Don't have an account"),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

