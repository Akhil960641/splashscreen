
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:splashscreen/userModel.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

final fkey = GlobalKey<FormState>();
TextEditingController firstNameTextController = TextEditingController();
TextEditingController lastnameTextController = TextEditingController();
TextEditingController middleNameTextController = TextEditingController();
TextEditingController userNameTextController = TextEditingController();

TextEditingController emailController = TextEditingController();
TextEditingController phoneNumberController = TextEditingController();
TextEditingController passwordController = TextEditingController();

const url = 'https://lms-beta-api.foxa.in/api/v1/web/C1003/user/register/';

 void postData()async{
   try{
     final response=await post(Uri.parse(url),body:{
       "first_name": firstNameTextController,
       "middle_name": middleNameTextController,
       "last_name": lastnameTextController,
       "username": userNameTextController,
       "password": passwordController,
       "mobile": phoneNumberController,
       "email": emailController
     });
     debugPrint("$response");
   }catch(er){
     const Icon(Icons.ice_skating);
   }

}

class InitState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Form(
      key: fkey,
      child: Column(
        children: [
          Container(
            height: 170,
            decoration: const BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(90)),
              color: Color(0xffF5591F),
              gradient: LinearGradient(
                colors: [(Color(0xffF5591F)), Color(0xffF2861E)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    "images/app_logo.png",
                    height: 90,
                    width: 90,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20, top: 20),
                  alignment: Alignment.bottomRight,
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            )),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffEEEEEE),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 20),
                    blurRadius: 100,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'No name';
                }
                return null;
              },
              keyboardType: TextInputType.text,
              controller: firstNameTextController,
              cursorColor: const Color(0xffF5591F),
              decoration: const InputDecoration(
                focusColor: Color(0xffF5591F),
                icon: Icon(
                  Icons.person,
                  color: Color(0xffF5591F),
                ),
                hintText: "first name",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'No name';
                }
                return null;
              },
              controller: middleNameTextController,
              cursorColor: const Color(0xffF5591F),
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Color(0xffF5591F),
                ),
                hintText: "middle name",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'No name';
                }
                return null;
              },
              controller: lastnameTextController,
              cursorColor: const Color(0xffF5591F),
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Color(0xffF5591F),
                ),
                hintText: "last name",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffEEEEEE),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 20),
                    blurRadius: 100,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'No name';
                }
                return null;
              },
              keyboardType: TextInputType.text,
              controller: userNameTextController,
              cursorColor: const Color(0xffF5591F),
              decoration: const InputDecoration(
                focusColor: Color(0xffF5591F),
                icon: Icon(
                  Icons.person,
                  color: Color(0xffF5591F),
                ),
                hintText: "User name",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'No email';
                }
                return null;
              },
              controller: emailController,
              cursorColor: const Color(0xffF5591F),
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color(0xffF5591F),
                ),
                hintText: "Email",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffEEEEEE),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 20),
                    blurRadius: 100,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextFormField(
              keyboardType: TextInputType.number,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'No name';
                }
                return null;
              },
              controller: phoneNumberController,
              cursorColor: const Color(0xffF5591F),
              decoration: const InputDecoration(
                focusColor: Color(0xffF5591F),
                icon: Icon(
                  Icons.phone,
                  color: Color(0xffF5591F),
                ),
                hintText: "Phone Number",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffEEEEEE),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 20),
                    blurRadius: 100,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'No name';
                }
                return null;
              },




              controller: passwordController,
              cursorColor: const Color(0xffF5591F),
              decoration: const InputDecoration(
                focusColor: Color(0xffF5591F),
                icon: Icon(
                  Icons.vpn_key,
                  color: Color(0xffF5591F),
                ),
                hintText: "Enter Passworfd",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              User(
                mobile:phoneNumberController.text ,
                email: emailController.text,
                password:passwordController.text,
                username:userNameTextController.text ,
                firstName: firstNameTextController.text,
                lastName: lastnameTextController.text,


              );

              // Write Click Listener Code Here.
              if (fkey.currentState!.validate()) {




              }else{
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content:  Text('details')));
              }
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [(Color(0xffF5591F)), Color(0xffF2861E)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: const Text(
                "REGISTER",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Have Already Member?  "),
                GestureDetector(
                  child: const Text(
                    "Login Now",
                    style: TextStyle(color: Color(0xffF5591F)),
                  ),
                  onTap: () {
                    // Write Tap Code Here.
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          )
        ],
      ),
    )));
  }

}
