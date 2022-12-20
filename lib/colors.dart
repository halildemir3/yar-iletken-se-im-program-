import 'dart:ui';

colorX(String color) {
  String newColor = '0xff' + color;

  newColor = newColor.replaceAll('#', '');

  int dartColor = int.parse(newColor);
  return Color(dartColor);
}

Color sacffoldBackground = colorX('00A5B6');
Color rightMenu = colorX('ffffff');
Color leftMenu = colorX('542918');
Color titleColor = colorX('ffffff');
Color backIconColor = colorX('ffffff');
Color counterColor = colorX('ffffff');
