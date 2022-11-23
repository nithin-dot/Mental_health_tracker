import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/navBar copy.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool isRememberMe = false;
  bool istoogle = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        child: Stack(children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0x26000000),
                    Color(0x33000000),
                    Color(0x4D000000),
                    Color(0x66000000),
                    Color(0x99000000),
                    Color(0xcc000000),
                    Color(0xFF000000)
                  ])),
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        istoogle ? 'Login' : 'Sign In',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      istoogle ? const SizedBox() : const SizedBox(height: 50),
                      istoogle ? Container() : buildName(),
                      const SizedBox(height: 20),
                      buildEmail(),
                      const SizedBox(height: 20),
                      buildpassword(),
                      istoogle
                          ? passwordforgetbtn()
                          : const SizedBox(height: 25),
                      rememberMebtn(),
                      loginbtn(),
                      accounttxtbtn()
                    ]),
              ))
        ]),
      ),
    )); // MaterialApp
  }

  Widget accounttxtbtn() {
    return GestureDetector(
        // ignore: avoid_print
        onTap: () => {
              setState(() {
                istoogle == false ? istoogle = true : istoogle = false;
              })
            },
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
              text:
                  istoogle ? 'Don\'t have an Account?' : 'You have an Account?',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          TextSpan(
              text: istoogle ? ' Sign Up' : ' Login',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold))
        ])));
  }

  Widget loginbtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ConstrainedBox(
          constraints: const BoxConstraints.tightFor(height: 60),
          child: ElevatedButton(
            onPressed: () {
           Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MainNavBar()));
            },
            style: ElevatedButton.styleFrom(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                minimumSize: const Size(200, 40),
                backgroundColor: Colors.white),
            child: Text(
              istoogle ? 'LOGIN' : 'SIGN UP',
              style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  Widget rememberMebtn() {
    return SizedBox(
        height: 20,
        child: Row(children: [
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.black,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    isRememberMe = value!;
                  });
                },
              )),
          const Text(
            'Remember Me',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ]));
  }

  Widget passwordforgetbtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
          // ignore: avoid_print
          onPressed: () => print("Forgot password pressed "),
          child: const Text(
            'Forgot Password?',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Full Name',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xFF000000),
                  ),
                  hintText: 'Full Name',
                  hintStyle: TextStyle(color: Colors.black38)),
            ))
      ],
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xFF000000),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black38)),
            ))
      ],
    );
  }

  Widget buildpassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: const TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xFF000000),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black38)),
            ))
      ],
    );
  }
}
