
import 'package:ecommerce_app_3/utils/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_3/screen/bottomnav/bottomnav.dart';


class Loginpage1 extends StatefulWidget {
  const Loginpage1({super.key});

  @override
  State<Loginpage1> createState() => _Loginpage1State();
}

class _Loginpage1State extends State<Loginpage1> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isenable=false;

  String? _validateEmail(String? value) {

    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }

    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }

    return null;
  }


  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>BottomNavigationScreen()),);

    }

  } bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.black,
            image:DecorationImage(
                fit: BoxFit.fill,
                opacity: 0.1,
                image: AssetImage("assets/images/logo_bg.jpg"))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              Column(
                children: [
                  Image.asset("assets/icons/ic_logo.jpeg",height: 110,width: 250,),
                ],
              ),
              SizedBox(height: 30,),
              Expanded(child:
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60))
                ),
                child:  Padding(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Text("Login",style: TextStyle(fontSize: 40,color:Colors.black),),
                          SizedBox(height: 20
                            ,),
                          Container(
                            margin: EdgeInsets.only(bottom: 20.0),
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                            ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: CustomTextfield(
                                keyboardType: TextInputType.emailAddress,
                                labelText: "Email",
                                hintText: "test@gmail.com",
                                suffixIcon: null,
                                 controller: _emailController,
                                validator:  (value) {
                                  if(value == null || value.isEmpty || !value.contains('@') || !value.contains('.')){
                                    return 'Invalid Email';
                                  }
                                  return null;
                                },
                              //  decoration:  InputDecoration(
                              //    labelText: "Email",
                              //    contentPadding:EdgeInsets.only(left:10),
                              //    hintText: "test@gmail.com",
                              //    labelStyle: TextStyle(color: Colors.black,),
                              //    hintStyle: TextStyle(color: Colors.grey),
                              //    border:InputBorder.none
                              //  ),

                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)
                              ),),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: CustomTextfield(
                                keyboardType: TextInputType.number,
                                  
                                 labelText: "Password",
                                    hintText: "......",
                                  suffixIcon:
                                  //  GestureDetector(
                                  //      onTap: () {
                                  //      setState(() {
                                  //           _obscureText = !_obscureText;
                                  //                      });
                                  //                         },
                                  //               child: Icon(
                                  //         _obscureText ? Icons.visibility : Icons.visibility_off,
                                  //             ),
                                  //              ),
                                  IconButton(
                                    icon: Icon(
                                      _obscureText ? Icons.visibility_off : Icons.visibility,
                                      color: _obscureText ? Colors.grey : Colors.blue,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                  ),
                                controller: _passwordController,
                                obscureText: _obscureText,
                                validator: _validatePassword,
                              //   decoration: InputDecoration(
                              //       labelText: "Password",
                              //     contentPadding:EdgeInsets.only(left:10),
                              //       hintText: "......",
                              //       labelStyle: TextStyle(color: Colors.black),
                              //       hintStyle: TextStyle(color: Colors.grey),
                              //      border: InputBorder.none,
                              //     suffixIcon: IconButton(
                              //       icon: Icon(
                              //         _obscureText ? Icons.visibility_off : Icons.visibility,
                              //         color: _obscureText ? Colors.grey : Colors.blue,
                              //       ),
                              //       onPressed: () {
                              //         setState(() {
                              //           _obscureText = !_obscureText;
                              //         });
                              //       },
                              //     ),

                              // ),
                            ),),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Forgot Password?",style: TextStyle(color: Colors.grey[600]),)
                              ],
                            ),
                          ),

                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: _submitForm,
                            child: Text('Login'),
                            style: ElevatedButton.styleFrom(
                              padding:  EdgeInsets.symmetric(horizontal: 140, vertical: 18),
                              primary: Colors.black, // Change color here
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)// Set circular border radius
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 55,),
                          TextButton(onPressed: (){
                          //  Navigator.push(context, MaterialPageRoute(builder: (context) =>Signup_1()),);
                            }, child: Text("Don't have any account? Sign Up",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ),
                ),
              ))
            ]
        ),
      ),
    );
  }
}