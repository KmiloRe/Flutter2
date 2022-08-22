import 'package:flutter/material.dart';

GestureDetector largeButton(VoidCallback function, Color bgColor, String text) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(child: Text(text)),
    ),
  );
}

GestureDetector largeButtonColoredT(
    VoidCallback function, Color bgColor, String text, Color bgColorT) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(
          child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: bgColorT),
      )),
    ),
  );
}

GestureDetector smallButton(
    VoidCallback function, Color bgColor, String text, Color bgColorT) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 90,
      height: 20,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: bgColorT),
      )),
    ),
  );
}

GestureDetector xtrasmallButton(
    VoidCallback function, Color bgColor, String text) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 90,
      height: 20,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(child: Text(text)),
    ),
  );
}

GestureDetector circleButton(
    VoidCallback function, Color bgColor, String text) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(child: Text(text)),
    ),
  );
}

Text SuptitleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 40,
    ),
  );
}

Text titleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
  );
}

Text subTitleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w300,
    ),
    textAlign: TextAlign.center,
  );
}

Text regularText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w200,
    ),
    textAlign: TextAlign.center,
  );
}

Text smallText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 9,
      fontWeight: FontWeight.w300,
    ),
    textAlign: TextAlign.center,
  );
}

//Como hacer el contructor de una clase, luego hacer una clase que display
//La descripción de la comida correspondiente dado (Imagen, TextoDescripcion)



