import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'currency_converter_material_page.dart';

void main(){
  runApp(const MyCupertinoApp());
}


//Types of widgets
//1.StatlessWidget
//2.StatefullWidget
//3.InheritedWidget

//State

//1.material design
//2.cupertino design

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home: const CurrencyConverterMaterialPage(),
    );
  }
}



class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}