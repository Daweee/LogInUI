import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomePage.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: AnnotatedRegion <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x26dc6601),
                      Color(0x33dc6601),
                      Color(0x80dc6601),
                      Color(0xffdc6601),
                    ]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.engineering,
                    size: 150,
                    ),
                    SizedBox(height: 80),
                    Text(
                      "Welcome!",
                      style: TextStyle(
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 36
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Hello dear user, we can fix you!",
                      style: TextStyle(
                          fontFamily: 'SF Pro',
                          fontSize: 20
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[300],
                          border: Border.all(color: Color(0xffe88504))
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Username or Email',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey[300],
                            border: Border.all(color: Color(0xffe88504)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: TextField(
                            style: TextStyle(
                              height: 1.0
                            ),
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [
                          Text('Forgot Password?',
                          style: TextStyle(
                              color: Colors.lightBlue[900],
                              fontFamily: 'SF Pro',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(color: Color(0x80dc6601),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text('Sign In',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'SF Pro',
                                fontSize: 20
                              ),
                              ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account yet?',
                          style: TextStyle(
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text(' Register now.',
                          style: TextStyle(
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.lightBlue[900],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
