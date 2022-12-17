part of 'widgets_imports.dart';

class TextWidget extends StatelessWidget {
  final bool isUnderline;
  final String text;
  final FontWeight fontWeight;

  final double textScale;
  final Color textColor;
  final TextAlign textAlign;
  const TextWidget(this.text, this.isUnderline, this.fontWeight, this.textScale,
      this.textColor, this.textAlign, 
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textScaleFactor: textScale,
      textAlign: textAlign,
      style: TextStyle(

          decoration:
              isUnderline ? TextDecoration.lineThrough : TextDecoration.none,
          fontWeight: fontWeight,
          color: textColor,
        ),
    );
  }
}
