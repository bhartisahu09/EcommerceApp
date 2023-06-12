import '../consts/consts.dart';

Widget ourButton({
  color,
  String? titleText,
  textColor,
  onPress,
}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.all(12),
      ),
      onPressed: onPress,
      //child: title.text.color{textColor}.font,
      child: titleText!.text.color(textColor).fontFamily(bold).make());
}
