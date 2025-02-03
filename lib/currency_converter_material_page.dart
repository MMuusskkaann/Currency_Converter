import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//1.Create a variable thatt stores the converted currency value
//2.Create a function that multiple the value given by the textfield with 81
//3.Store the value in the variable tha we created
//4.DISPLAY the variable
class CurrencyConverterMaterialPage extends StatefulWidget{
  const  CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

@override
class _CurrencyConverterMaterialPageState 
      extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert(){
    result = double.parse(textEditingController.text) * 81;
  }
  
  
   @override
  Widget build(BuildContext context){ //buildContext->tells the exact location of the widget in widget tree
  print('rebuilt');
  final border = OutlineInputBorder(
        //color(0xARRGGBB)
        borderSide: const BorderSide(
          width: 2.0,
          style: BorderStyle.solid,
          ),
          borderRadius : BorderRadius.all(
          Radius.circular(5)),
        ); 
    return  Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
        title: const Text('Currency Converter',
        style:TextStyle(color: Colors.black87)),
        centerTitle: true,
      ),
        body: Center(
           child :Padding(
             padding: const EdgeInsets.all(10),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  //int -> string integralvalue.toString()
                 // string -> int int.parse(stringvalue)
                  '₹ ${result!=0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)
                 ),
                ),
                
                //padding
                //containing
                TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                
                  decoration: InputDecoration(
                    hintText: 'Please Enter the amount in USD',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                     ),
                     prefixIcon:const Icon(Icons.monetization_on_outlined),
                      prefixIconColor : Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: border,
                      enabledBorder: border,
                       ), 
                       keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                       ),
                      ),
                      //button

                      const SizedBox(height:10),
             
                      //raised -> it's like an actual button
                      //appears like a text
                      ElevatedButton(
                        onPressed: convert,
                        style: ElevatedButton.styleFrom(
                          // elevation: WidgetStatePropertyAll(20),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize:  const Size(double.infinity,50),
                          shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(5),
                             ),
                            ),
                        child: const Text('Convert'),
                       ),
                    ],
                  ),
           ),
              ),
            );
         }
      }
