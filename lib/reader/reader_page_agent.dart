import 'package:flutter/material.dart';

class ReaderPageAgent {
  static List<Map<String, int>> getPageOffsets(String content, double height, double width, double fontSize) {
    if (content.isEmpty) {
      return []; // 处理空内容
    }

    String tempStr = content;
    List<Map<String, int>> pageConfig = [];
    int last = 0;
    TextPainter textPainter = TextPainter(textDirection: TextDirection.ltr, text: TextSpan(style: TextStyle(fontSize: fontSize)));

    while (tempStr.isNotEmpty) {
      textPainter.text = TextSpan(text: tempStr, style: TextStyle(fontSize: fontSize));
      textPainter.layout(maxWidth: width - 1);

      int end = textPainter.getPositionForOffset(Offset(width, height)).offset;
      if (end == 0 || end > tempStr.length) {
        end = tempStr.length; // 处理溢出或不足的文本
      }

      pageConfig.add({
        'start': last,
        'end': last + end
      });

      if (end == tempStr.length) {
        break; // 如果处理完了所有文本，跳出循环
      }

      last += end;
      tempStr = tempStr.substring(end);
    }

    return pageConfig;
  }
}
