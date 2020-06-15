import 'package:flutter/material.dart';
import 'package:nextflow_thai_personal_id/nextflow_thai_personal_id.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow Flutter Widget Today',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter 3 นาที: Form จริงจัง'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _formKey = GlobalKey<FormState>();
  ThaiIdValidator thaiIdValidator = ThaiIdValidator(errorMessage: 'เลขประจำตัวไม่ถูกต้อง กรุณาตรวจสอบอีกครั้ง');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Text('Email:'),
                  TextFormField(
                    validator: (String input) {
                      if(input.isEmpty) {
                        return "อย่าลืมกรอก Email!";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('รหัสผ่าน:'),
                  TextFormField(
                    obscureText: true,
                    validator: (String input) {
                      if(input.isEmpty) {
                        return "อย่าลืมกรอกรหัสผ่าน!";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('เลขประจำตัวประชาชน:'),
                  TextFormField(
                    maxLength: 13,
                    validator: thaiIdValidator.validate,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              // go go go
                            }
                          },
                          child: Text('ลงทะเบียน'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: OutlineButton(
                          onPressed: () {
                            _formKey.currentState.reset();
                          },
                          child: Text('ล้างข้อมูล'),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ));
  }
}
