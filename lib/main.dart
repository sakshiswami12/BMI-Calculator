import 'package:bmi_calculator/cal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() async{

}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
    );
  }
}



class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {


  final myController = TextEditingController();
  final myController1 = TextEditingController();
  printLatestValue(String str) {
    if(str=='Email')
      print(" ${str} ${myController.text}");
    else
      print(" ${str} ${myController1.text}");

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Stack(
        children:[
          Container(
            padding: EdgeInsets.only(top: 150,left: 40),
            child: Text("Welcome\nBack ",style: TextStyle(fontSize: 44,color: Colors.black),),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45),
              margin: EdgeInsets.only(right: 35,left: 35),
              child: Column(
                children: [
                  TextField(
                    controller: myController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                        ),
                        hintText:"Email...."
                    ),
                  ),
                  SizedBox(height: 40,),
                  TextField(
                    controller: myController1,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                        ),
                        hintText:"Password...."
                    ),

                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(onPressed:(){


                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Demo()));

                        // })
                        //
                        //  print(email);
                        // print(password);
                        printLatestValue('Email');
                        printLatestValue('Password');
                        myController.clear();
                        myController1.clear();
                       //  Navigator.push(context, MaterialPageRoute(builder: (context)=>BMI()));
                      },
                        style: ElevatedButton.styleFrom(
                          // padding:EdgeInsets.only(right:) ,
                            shadowColor: Colors.black,
                            elevation: 20,
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                            fixedSize: Size(90, 40)
                        ),
                        child:Text("Sign in ") ,),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}