import 'package:trotter/trotter.dart';
import 'package:flutter/material.dart';
class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  List<dynamic> strarray  = [];
  List<List<dynamic>> s= [];
  String sshow = '';
  String s1 = "";
  String s2 = "";
  String s3 = "";
  String s4 = "";
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             TextField(
               controller: textEditingController,
             // obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Please enter the number',
              ),
            ),
            ElevatedButton(

              onPressed: () {
                String str = textEditingController.text;
                strarray = str.split('');
                List<List<dynamic>> s=generate as List<List<dynamic>>;


                setState(() {
                  s1=s[0].join();
                  s2=s[1].join();
                  s3=s[2].join();
                  s4=s[3].join();

                });

               // print(s[0]);

              },
              child: const Text('Generate'),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        sshow=s3;
                      });
                    },
                    child: Container(

                      width: 60.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        color: const Color(0xff574f4f),
                      ),
                      child: Center(
                        child: Text(
                          
                          s3,
                          
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 18,
                            color: Colors.white,
                            //height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        sshow=s2;
                      });
                    },
                    child: Container(
                      width: 60.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        color: const Color(0xff574f4f),
                      ),
                      child: Center(
                        child: Text(
                          s2,
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 18,
                            color: Colors.white,
                            //height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        sshow=s1;
                      });
                    },
                    child: Container(
                      width: 60.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        color: const Color(0xff574f4f),
                      ),
                      child: Center(
                        child: Text(
                          s1,
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 18,
                            color: Colors.white,
                            //height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        sshow=s4;
                      });
                    },
                    child: Container(
                      width: 60.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        color: const Color(0xff574f4f),
                      ),
                      child: Center(
                        child: Text(
                          s4,
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 18,
                            color: Colors.white,
                            //height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,

            ),

            TextField(
              


              //controller: textEditingController,

              // obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: sshow,
              ),
            ),
          ],
        ),
      )
    );
  }

  List<List<dynamic>> get generate {
    var perm = Permutations(4, strarray);
    var list = perm().toList();
    print(list);
    return list;
  }
}
