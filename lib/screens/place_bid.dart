import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlaceBid extends StatelessWidget {
  const PlaceBid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: const Text('showModalBottomSheet'),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 650,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                              
                              Padding(
                                    padding: const EdgeInsets.only(left: 40,top: 10,right: 10),
                                    child:  RichText(
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(text: 'Place a bid', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color:Color.fromARGB(255, 0, 0, 0))),
                                          ],
                                        ),
                                )
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:150,top: 10),
                                    child: IconButton(
                                      icon: const Icon(Icons.close),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                              )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 237, 234, 234)),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(12.0) //                 <--- border radius here
                                ),
                              ),
                            child: Row(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10,right: 8,bottom: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(text: 'Enter bid', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromARGB(255, 200, 199, 199))),
                                          ],
                                        ),
                                    ),
                                  ),      
                                  Container(
                                    height: 50,
                                    width: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 0,left: 30,bottom: 0),
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.digitsOnly
                                        ], // Only numbers can be entered
                                      ),                                      
                                    ),
                                  ),
                                   Padding(
                                    padding: const EdgeInsets.only(left: 40,top: 20,right: 0,bottom: 20),
                                    child: RichText(
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(text: 'ETH', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromARGB(255, 0, 0, 0))),
                                          ],
                                        ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        
                        Row(
                          children: [
                            
                              Padding(
                                padding: const EdgeInsets.only(top: 30,right: 0,bottom: 15,left: 40),
                                child: RichText(
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(text: 'Your Balance', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromARGB(255, 200, 199, 199))),
                                          ],
                                        ),
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30,right: 0,bottom: 15,left: 150),
                                child: RichText(
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(text: '8.498 ETH', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromARGB(255, 0, 0, 0))),
                                          ],
                                        ),
                                    ),
                              ),
                          ],
                        ),
                        const Divider(
                          height: 20,
                          thickness: 0.25,
                          indent: 40,
                          endIndent: 45,
                          color: Color.fromARGB(255, 153, 150, 150),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 15,right: 0,bottom: 15,left: 40),
                                child: RichText(
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(text: 'Service Fee', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromARGB(255, 200, 199, 199))),
                                          ],
                                        ),
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,right: 0,bottom: 15,left: 180),
                                child: RichText(
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(text: '0 ETH', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromARGB(255, 0, 0, 0))),
                                          ],
                                        ),
                                    ),
                              ),
                          ],
                        ),
                        const Divider(
                          height: 20,
                          thickness: 0.25,
                          indent: 40,
                          endIndent: 45,
                          color: Color.fromARGB(255, 153, 150, 150),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 15,right: 0,bottom: 10,left: 40),
                                child: RichText(
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(text: 'Total bid amount', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromARGB(255, 200, 199, 199))),
                                          ],
                                        ),
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,right: 0,bottom: 10,left: 150),
                                child: RichText(
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(text: '0 ETH', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromARGB(255, 0, 0, 0))),
                                          ],
                                        ),
                                    ),
                              ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,right: 30,top: 40,bottom: 10),
                                child: ElevatedButton(
                                  child: RichText(
                                    text: TextSpan(
                                          children: const <TextSpan>[
                                            TextSpan(text: '                         Place a bid                         ', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Color.fromARGB(255, 255, 255, 255))),
                                            ],
                                          ),
                                      ),
                                       style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 190, 83, 0)),
                                        ),
                                  onPressed: () {},
                                ),
                        )
                        // const Text('Modal BottomSheet'),
                        // ElevatedButton(
                        //   child: const Text('Close BottomSheet'),
                        //   onPressed: () => Navigator.pop(context),
                        // ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
