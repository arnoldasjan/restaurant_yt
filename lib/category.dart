import 'package:flutter/material.dart';

Stack CategoryWidget = Stack(
  children: <Widget>[
    Container(
      height: 120.0,
      width: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color(0xFFFF8C48),
            Color(0xFFFF5673),
          ],
        ),
      ),
    ),
    Opacity(
      opacity: 0.3,
      child: Container(
        height: 120.0,
        width: 120.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/italian.jpg'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
      ),
    ),
    Container(
      height: 120.0,
      width: 120.0,
      alignment: Alignment.center,
      child: Text(
        'Italian',
        style: TextStyle(
          fontFamily: 'Josefin Sans',
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  ],
);