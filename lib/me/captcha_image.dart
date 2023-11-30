import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/captcha_entity.dart';

class CaptchaImage extends StatefulWidget {
  final Future<CaptchaEntity> Function() onPressed;
  final double width;
  final double height;

  const CaptchaImage({
    required this.onPressed,
    this.width = 105,
    this.height = 50,
    Key? key,

  }) : super(key: key);

  @override
  _CaptchaImageState createState() => _CaptchaImageState();
}

class _CaptchaImageState extends State<CaptchaImage> {
  String captchaImage = '';

  @override
  void initState() {
    super.initState();
    _loadCaptcha();
  }

  Future<void> _loadCaptcha() async {
    try {
      CaptchaEntity captchaEntity = await widget.onPressed();
      setState(() {
        captchaImage = captchaEntity.img!;
      });
    } catch (e) {
      print('Error fetching captcha: $e');
      // Handle error state
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _loadCaptcha,
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: captchaImage.isNotEmpty
            ? Image.memory(
          base64Decode(captchaImage),
          fit: BoxFit.cover,
          errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
            return Text('Error Loading Captcha');
          },
        )
            : CircularProgressIndicator(), // Show loading indicator while fetching the image
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return GestureDetector(
  //     onTap: _loadCaptcha,
  //     child: SizedBox(
  //       width: widget.width,
  //       height: widget.height,
  //       child: captchaImage.isNotEmpty
  //           ? Image.network(
  //         captchaImage,
  //         fit: BoxFit.cover,
  //         errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
  //           return Text('Error Loading Captcha');
  //         },
  //       )
  //           : CircularProgressIndicator(), // Show loading indicator while fetching the image
  //     ),
  //   );
  // }
}
