import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/font_manager.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int trimLength;

  ExpandableText(this.text, {this.trimLength = 100});

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  List<TextSpan> _buildStyledText(String text) {
    List<TextSpan> spans = [];
    final RegExp exp = RegExp(r"(#[a-zA-Z0-9_]+)|(\s+)|([^#\s]+)");
    exp.allMatches(text).forEach((match) {
      if (match.group(1) != null) {
        spans.add(TextSpan(
          text: match.group(1),
          style: TextStyle(color: Colors.blue,fontSize: FontSize.s16),
        ));
      } else {
        spans.add(TextSpan(
          text: match.group(0),
          style: TextStyle(color: Colors.white),
        ));
      }
    });

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    final displayText = widget.text.length <= widget.trimLength
        ? widget.text
        : _isExpanded
            ? widget.text
            : widget.text.substring(0, widget.trimLength) + '...';
    return GestureDetector(
      onTap: _toggleExpanded,
      child: SizedBox(
        width: 250.w,
        child: RichText(
          text: TextSpan(
            children: _buildStyledText(displayText),
          ),
        ),
      ),
    );
  }
}
