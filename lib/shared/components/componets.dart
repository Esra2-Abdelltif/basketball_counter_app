import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defultEvelatedButton({required String title,@required function })=>ElevatedButton(onPressed: function,
  child: Text(title,style: TextStyle(color: Colors.black87,fontSize: 18),),
  style:ElevatedButton.styleFrom(primary: Colors.orange,fixedSize:Size(150,50)) ,);