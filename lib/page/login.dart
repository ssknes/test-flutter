import 'package:flutter/material.dart';
import 'package:toyota/providers/request/loginRequest.dart';
import 'package:toyota/utility/loading.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  late String username;
  late String password;
  bool _loadData = false;

  _submitData(BuildContext ctx) async {
    final enteredUsername = _usernameController.text;
    final enteredPassword = _passwordController.text;

    setState(() {
      username = enteredUsername;
      password = enteredPassword;
      // username = '111';
      // password = 'admin';
      _loadData = true;
    });
    Login loginModel = Login(key: '', pass: password, user: username);
  }

  void goToPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Scaffold();
    }));
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return _loadData
        ? Loading()
        : Scaffold(
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: _height * 0.25,
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'TOYOTA',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFfc3003),
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Smart Excellence Program',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFfc3003),
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: _width * 0.1,
                        right: _width * 0.1,
                        top: _height * 0.1,
                        bottom: _height * 0.2,
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'เข้าสู่ระบบ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: TextField(
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                              controller: _usernameController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                prefixIcon: Icon(Icons.account_box),
                                hintText: "เลขประจำตัวประชาชน",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 32.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                // focusedBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //       color: Colors.white, width: 32.0),
                                //   borderRadius: BorderRadius.circular(25.0),
                                // ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                              controller: _passwordController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                prefixIcon: Icon(Icons.vpn_key),
                                hintText: "รหัสผ่าน",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 32.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                // focusedBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //       color: Colors.white, width: 32.0),
                                //   borderRadius: BorderRadius.circular(25.0),
                                // ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            // onTap: () => _submitData(context),R
                            child: Container(
                              width: MediaQuery.of(context).size.width - 60.0,
                              margin: EdgeInsets.symmetric(vertical: 20),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xFFFFFFFF),
                                    Color(0xFFfc3003),
                                    Color(0xFFfc3003)
                                  ],
                                ),
                                // color: Colors.blue,
                                borderRadius: new BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                              ),
                              child: Text(
                                'เข้าสู่ระบบ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
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
