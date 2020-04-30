import 'package:aztlan/shared/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Log extends StatelessWidget {
  final double screenHeight, screenWidth;
  const Log({Key key, this.screenHeight, this.screenWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      //print((constraints.maxHeight));
      if (constraints.maxWidth > 600) {
        return Column(
          children: LoginPageChildren(constraints.biggest.width, context),
        );
      }
    });
  }

  List<Widget> LoginPageChildren(double curWidth, BuildContext context) {
    return <Widget>[
      Row(
        children: [
          Container(
            width: curWidth / 2,
            height: screenHeight,
            color: PopBlue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  "images/workflow.png",
                )
              ],
            ),
          ),
          Container(
           // color: Black,
            width: curWidth / 2,
            height: screenHeight,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 400,
                    width: 500,
                    child: Card(
                      elevation: 10,
                      shadowColor: PopBlue,
                      child: Form(
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 500,
                              color: DarkBlue,
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: White,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40,right: 30,left: 30),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  hintText: 'Enter Email',
                                  errorStyle: TextStyle(
                                      color: Colors.red[900],
                                      fontSize: 15.0
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,right: 30,left: 30),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.vpn_key),
                                  hintText: 'Enter Password',
                                  errorStyle: TextStyle(
                                      color: Colors.red[900],
                                      fontSize: 15.0
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  color: Colors.blueAccent,
                                  height: 40,
                                  width: 360,
                                  child: MaterialButton(
                                    child: Text('Sign In',style: TextStyle(color: White,fontSize: 18),),

                                  ),
                                ),
                              )
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 15),
                                child: Align(
                                  alignment: FractionalOffset.center,
                                  child: RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'Dont have an account yet? ',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black)),
                                        TextSpan(
                                            text: 'Sign Up',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: DarkBlue,
                                                fontWeight: FontWeight.w600),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () => print('click')),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ];
  }
}