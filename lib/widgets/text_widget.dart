part of 'widgets_imports.dart';

class TextWidget extends StatelessWidget {
  final bool isUnderline;
  final String text;
  final FontWeight fontWeight;
  final String fontFamily;
  final double textScale;
  final Color textColor;
  final TextAlign textAlign;
  const TextWidget(this.text, this.isUnderline, this.fontWeight, this.textScale,
      this.textColor, this.textAlign, this.fontFamily,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textScaleFactor: textScale,
      textAlign: textAlign,
      style: TextStyle(
          overflow: TextOverflow.ellipsis,
          decoration:
              isUnderline ? TextDecoration.underline : TextDecoration.none,
          fontWeight: fontWeight,
          color: textColor,
          fontFamily: fontFamily),
    );
  }
}
