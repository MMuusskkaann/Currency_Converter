import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//stfl --> for boiler plate code
class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
 extends State<CurrencyConverterCupertinoPage> {

  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert(){
    result = double.parse(textEditingController.text) * 81;
  }
  
  @override
  Widget build(BuildContext context){ //buildContext->tells the exact location of the widget in widget tree
  
    return  CupertinoPageScaffold(
      backgroundColor: CupertinoColors.inactiveGray,
      navigationBar: const  CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        middle:  Text('Currency Converter'),
      ),
      child : Center(
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
                  color: Color.fromARGB(231, 6, 1, 1)
                 ),
                ),
                
                //padding
                //containing
                CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: CupertinoColors.black,
                  ),
                
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    border : Border.all(),
                    borderRadius : BorderRadius.circular(5),
                     ),  
                     placeholder: 'Please enter the amount in USD',
                     prefix: Icon(CupertinoIcons.money_dollar),
                       keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                       ),
                      ),
                      //button

                      const SizedBox(height:10),
             
                      //raised -> it's like an actual button
                      //appears like a text
                      CupertinoButton(
                        onPressed: convert,
                        color: CupertinoColors.black,
                        child: const Text('Convert'),
                       ),
                    ],
                  ),
                ),
              ),
            );
  }
}