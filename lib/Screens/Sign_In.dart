import 'package:e_learning/Screens/Sign_Up.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import '../Widgets/E_Logo.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool showPassword = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      resizeToAvoidBottomInset: false,
      gradient: LinearGradient(
        colors: [
          const Color(0xFFA9F6C3).withOpacity(0.89),
          const Color(0xFFB5F0A8).withOpacity(0.90),
          const Color(0xFFF9AFAB).withOpacity(0.82),
          const Color(0xFFB9B0F2).withOpacity(0.82),
        ],
        stops: [0.4, 1.8, 0.6, 0.9],
        tileMode: TileMode.clamp,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Padding(
          padding: const EdgeInsets.only(left: 46, right: 46),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 100),
                child: Center(
                  child: Column(
                    children: [
                      ELogo(),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Text(
                          "E Learning",
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Learn From Home",
                        style: TextStyle(
                            color: Color(0xFF333333).withOpacity(0.50),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 36,
              ),
              Container(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Enter your email and password",
                style: TextStyle(
                    color: Color(0xFF333333).withOpacity(0.50),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF333333).withOpacity(0.50),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF333333).withOpacity(0.50),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF333333).withOpacity(0.50),
                      ),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Color(0xFF333333).withOpacity(0.50),
                    ),
                    hintText: 'Enter email',
                    hintStyle: TextStyle(
                      color: Color(0xFF333333).withOpacity(0.80),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xFF333333).withOpacity(0.50),
                    )),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                obscureText: !this.showPassword,
                controller: passwordController,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF333333).withOpacity(0.50),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF333333).withOpacity(0.50),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF333333).withOpacity(0.50),
                      ),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Color(0xFF333333).withOpacity(0.50),
                    ),
                    hintText: 'Enter password',
                    hintStyle: TextStyle(
                      color: Color(0xFF333333).withOpacity(0.80),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF333333).withOpacity(0.50),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !this.showPassword;
                        });
                      },
                      icon: Icon(Icons.remove_red_eye,
                          color: this.showPassword
                              ? Color(0xFF4CC590)
                              : Color(0xFF333333).withOpacity(0.50)),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Forget password?",
                      style: TextStyle(
                          color: Color(
                            0xFFFE8056,
                          ),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  )),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF4CC590),
                  ),
                  child: Center(
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Center(
                child: Text(
                  'Or sign in with',
                  style: TextStyle(color: Color(0xFF333333).withOpacity(0.75)),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border:
                              Border.all(color: Color(0xFF4F7BBF), width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/facebook.png'),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                  color: Color(0xFF4F7BBF),
                                  letterSpacing: 1,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: Color(0xFFD9260C), width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/google.png'),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                  color: Color(0xFFD9260C),
                                  letterSpacing: 1,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20, top: 134),
                child: Row(
                  children: [
                    Text(
                      'Don,t have an account?',
                      style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Color(
                              0xFFFE8056,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
