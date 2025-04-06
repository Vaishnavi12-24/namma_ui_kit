import 'package:flutter/material.dart';

///As a sample, here’s how to add the customText in the class. You can use it in the same format with the required parameters.

// CustomText(
// text: "test",
// textColor: Colors.grey,
// fontWeight:FontWeight.w600,
// textAlign:TextAlign.center,
// textStrikeOut: true,
// lineSpacing: 2.0,
// maxLine: 2,
// margin: EdgeInsets.all(5),
// letterSpacing: 2,
// fontSize: 16,
// ),

class CustomText extends StatefulWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final bool? softWrap;
  final TextOverflow? overflow;
  final AlignmentGeometry? alignment;
  final EdgeInsets? margin;
  final Color? textColor;
  final Null Function()? onPressed;
  final bool? textStrikeOut;
  final Color? strikeOutColor;
  final double? lineSpacing;
  final int? maxLine;
  final double? letterSpacing;
  const CustomText(
      {super.key,
      required this.text,
      this.fontSize = 12,
      this.fontWeight,
      this.fontFamily,
      this.softWrap = true,
      this.overflow,
      this.textAlign,
      this.alignment,
      this.margin,
      this.textColor,
      this.onPressed,
      this.textStrikeOut = false,
      this.strikeOutColor = Colors.black,
      this.lineSpacing,
      this.maxLine,
      this.letterSpacing});

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Align(
        alignment: widget.alignment ?? Alignment.centerLeft,
        child: Padding(
          padding: widget.margin ?? EdgeInsets.zero,
          child: Text(
            widget.text,
            softWrap: widget.softWrap,
            overflow: widget.overflow ?? TextOverflow.ellipsis,
            textAlign: widget.textAlign,
            maxLines: widget.maxLine,
            style: TextStyle(
                letterSpacing: widget.letterSpacing,
                color: widget.textColor,
                fontSize: widget.fontSize,
                fontWeight: widget.fontWeight,
                fontFamily: widget.fontFamily,
                height: widget.lineSpacing,
                decoration: widget.textStrikeOut == true
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                decorationColor: widget.strikeOutColor),
          ),
        ),
      ),
    );
  }
}
