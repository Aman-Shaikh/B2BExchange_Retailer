import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bgWidget({Widget?child})
{
  return Container(
    decoration: const BoxDecoration(color: Colors.orange),
    child: child,
  );
}