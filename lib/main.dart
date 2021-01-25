import 'package:flutter/material.dart';
import 'package:flutter_app111/Constans.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(BMI());
}

class BMI extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BMI> {
Gender g;
double height=150;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

     home:Scaffold(

     backgroundColor:scafcolor,
      appBar: (AppBar(backgroundColor:scafcolor,
      title:Center(child: Text('BMI Calculter',style: TextStyle(fontSize: 25),))
        ,)),
      body: Column(

        children: [
          SizedBox(height: 10,),
          Row(
            children: [
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child:GestureDetector(onTap: (){
                 setState(() {
                   g=Gender.Male;
                 });
               },
               child: Container(
                decoration:BoxDecoration(
                  color: g==Gender.Male?active:inactive,
                  borderRadius:BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    Text('Male',style: TextStyle(color: Colors.white,fontSize: 25),),
                    Icon(FontAwesomeIcons.venus,color: Colors.white,size: 90,)
                  ],
                ),

              ),
               )
             ),

           ),
              Expanded(

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:GestureDetector(onTap: (){
                    setState(() {
                      g=Gender.Famale;
                    });
                     },
                   child: Container(
                    decoration:BoxDecoration(
                        color: g==Gender.Famale?active:inactive,
                        borderRadius:BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [
                        Text('Male',style: TextStyle(color: Colors.white,fontSize: 25),),
                        Icon(FontAwesomeIcons.mars,color: Colors.white,size: 90,)
                      ],
                    ),

                  ),
                  ),
                ),

              )

            ],

          ),
          Expanded(
            
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color:active,
              ),
              child:Column(
                children: [
                  Text('Height',style:TextStyle(fontSize: 30,color: Colors.grey),),
                  Text(height.toString(),style:TextStyle(fontSize: 40,color: Colors.white),),
                Slider(max: 250, min: 50,activeColor:Colors.pink,inactiveColor:Colors.grey,
                value: height ,onChanged: (value){
                  height=value;
                  },),


                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Text('Age',style:TextStyle(fontSize: 30,color: Colors.grey),)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    )
    );

  }
}
enum Gender{
  Male,
  Famale
}






