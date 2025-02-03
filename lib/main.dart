import 'package:flutter/material.dart';
import 'currency_converter_material_page.dart';

void main(){
  runApp(const My_App());
}


//Types of widgets
//1.StatlessWidget
//2.StatefullWidget
//3.InheritedWidget

//State

//1.material design
//2.cupertino design

class My_App extends StatelessWidget{
  const My_App({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home: const CurrencyConverterMaterialPage(),
    );
  }
}