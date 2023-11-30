import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:xinshijie_flutter/api/users_api.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/widget/toast.dart';
import 'package:xinshijie_flutter/me/captcha_image.dart';
import 'package:xinshijie_flutter/me/login_page.dart';
import 'package:xinshijie_flutter/model/captcha_entity.dart';
import 'dart:async';

import 'package:xinshijie_flutter/public.dart';

class TesserasObliviscarisPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TesserasObliviscarisPageState();
}

class TesserasObliviscarisPageState extends State {
  TextEditingController accountEditer = TextEditingController();
  TextEditingController passwordEditer = TextEditingController();
  TextEditingController codeEditer = TextEditingController();
  int coldDownSeconds = 0;
  Timer? timer;
  bool _isPasswordVisible = false; // Add this line in your stateful widget class

  String captchaUuid = '';

  Future<CaptchaEntity> fetchCaptcha() async {
    // Call your captcha API and fetch the UUID and Base64 image
    // This is a placeholder for your API call logic
    CaptchaEntity captchaEntity = await UsersApi.getCode();
    captchaUuid = captchaEntity.uuid ?? '';
    return captchaEntity;
  }
  
  Future fetchSmsCode() async {
    if (accountEditer.text.length == 0) {
      Alert(context: context, title: "通知", desc: '请输入手机号').show();
      // Toast.show('请输入手机号');
      return;
    }
    try {
      setState(() {
        coldDownSeconds = 60;
      });
      coldDown();
    } catch (e) {
      Alert(context: context, title: "通知", desc: e.toString()).show();
      // Toast.show(e.toString());
    }
  }

  // login() async {
  //   var account = accountEditer.text;
  //   var code = codeEditer.text;
  //
  //   try {
  //     var response = await Request.post(action: 'login', params: {
  //       'account': account,
  //       'code': code,
  //     });
  //     UserManager.instance.login(response);
  //
  //     Navigator.pop(context);
  //   } catch (e) {
  //     Toast.show(e.toString());
  //   }
  // }
  login() async {
    var account = accountEditer.text;
    var password = passwordEditer.text;

    // Check if the account and password are not empty
    if (account.isEmpty || password.isEmpty) {
      Alert(context: context, title: "通知", desc: '账号或密码不能为空').show();
      // Toast.show('账号或密码不能为空');
      return;
    }

    try {
      var response = await Request.post(action: 'login', params: {
        'account': account,
        'password': password, // Make sure to send the correct parameters
      });

      // Check if the login is successful
      if (response != null && response['status'] == 'success') {
        UserManager.instance.login(response);
        // Navigate to the user page, replace 'UserPage' with your user page widget
        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserPage()));
      } else {
        // Show error message
        Alert(context: context, title: "通知", desc: response['message'] ?? '登录失败').show();

        // Toast.show(response['message'] ?? '登录失败');
      }
    } catch (e) {
      Alert(context: context, title: "通知", desc: '登录异常: ${e.toString()}').show();

      // Toast.show('登录异常: ${e.toString()}');
    }
  }

  @override
  void dispose() {
    if (timer != null) {
      timer!.cancel();
    }
    super.dispose();
  }

  coldDown() {
    timer = Timer(Duration(seconds: 1), () {
      setState(() {
        --coldDownSeconds;
      });

      coldDown();
    });
  }



  Widget buildAccount() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: SQColor.paper,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        controller: accountEditer,
        keyboardType: TextInputType.name,
        style: TextStyle(fontSize: 14, color: SQColor.darkGray),
        decoration: InputDecoration(
          hintText: '请输入账号',
          hintStyle: TextStyle(color: SQColor.gray),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget buildPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: SQColor.paper,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        controller: passwordEditer,
        keyboardType: TextInputType.visiblePassword,
        obscureText: !_isPasswordVisible, // Use the state variable here
        style: TextStyle(fontSize: 14, color: SQColor.darkGray),
        decoration: InputDecoration(
          hintText: '请输入密码',
          hintStyle: TextStyle(color: SQColor.gray),
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(
              // Change the icon based on the state
              _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
              color: SQColor.darkGray,
            ),
            onPressed: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible; // Toggle the state on press
              });
            },
          ),
        ),
      ),
    );
  }


  Widget buildCode() {
    return Container(
      padding: EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        color: SQColor.paper,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: codeEditer,
              keyboardType: TextInputType.name,
              style: TextStyle(fontSize: 14, color: SQColor.darkGray),
              decoration: InputDecoration(
                hintText: '请输入验证码',
                hintStyle: TextStyle(color: SQColor.gray),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(color: Color(0xffdae3f2), width: 1, height: 40),
          Theme(
            data: ThemeData(primaryColor: SQColor.primary),
            child: CaptchaImage(
              onPressed: fetchCaptcha,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildAccount(),
              SizedBox(height: 10),
              buildPassword(),
              SizedBox(height: 10),
              // buildCode(),
              // SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: SQColor.primary,
                ),
                height: 40,
                child: TextButton(
                  onPressed: login,
                  child: Text(
                    '登录',
                    style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              buildFooter(), // Add the footer with the two buttons
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登录'), elevation: 0),
      backgroundColor: Colors.white,
      body: buildBody(),
    );
  }

  Widget buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        TextButton(
          onPressed: () {
            // TODO: Add navigation logic for "忘记密码"
          },
          child: Text('忘记密码', style: TextStyle(color: SQColor.darkGray)),
        ),
        TextButton(
          onPressed: () {
            LoginPage().launch(context);
            // TODO: Add navigation logic for "注册"
          },
          child: Text('登录', style: TextStyle(color: SQColor.darkGray)),
        ),
      ],
    );
  }

}
