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
int Age=19;
int Weight=70;
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



             Padding(
               padding: const EdgeInsets.all(8.0),
               child:GestureDetector(onTap: (){
                 setState(() {
                   g=Gender.Male;
                 });
               },
               child: Container(
                 height: 190,
                 width: 165,
                decoration:BoxDecoration(
                  color: g==Gender.Male?active:inactive,
                  borderRadius:BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text('Male',style: TextStyle(color: Colors.white,fontSize: 30),),
                    SizedBox(height: 20,),
                    Icon(FontAwesomeIcons.venus,color: Colors.white,size: 100,)
                  ],
                ),

              ),
               )


           ),
            Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:GestureDetector(onTap: (){
                    setState(() {
                      g=Gender.Famale;
                    });
                     },
                   child: Container(
                     height: 190,
                     width: 160,
                    decoration:BoxDecoration(
                        color: g==Gender.Famale?active:inactive,
                        borderRadius:BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text('Male',style: TextStyle(color: Colors.white,fontSize: 30),),
                        SizedBox(height: 20,),
                        Icon(FontAwesomeIcons.mars,color: Colors.white,size: 100,)
                      ],
                    ),

                  ),
                  ),
                ),




            ],

          ),

           Container(
             height: 180,width: 345,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color:active,
              ),
              child:Column(
                children: [
                  SizedBox(height: 8,),
                  Text('Height',style:TextStyle(fontSize: 30,color: Colors.grey),),
                  SizedBox(height: 10,),
                  Text(height.toStringAsFixed(1),style:TextStyle(fontSize: 40,color: Colors.white),),
                  SizedBox(height: 8,),
                Slider(max: 250, min: 100,activeColor:Colors.pink,inactiveColor:Colors.grey,
                value: height ,onChanged: (value){
                setState(() {
                  height=value;
                });
                  },),


                ],
              ),

          ),

          Row(
            children: [


                 Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                       height: 190,
                      width: 160,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       color:active,
                       ),
                       child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Text('Age',style:TextStyle(fontSize: 30,color: Colors.grey),),
                          SizedBox(height: 10,),
                          Text(Age.toString(),style:TextStyle(fontSize: 40,color: Colors.white),),
                        SizedBox(height: 10,),

                         Row(
                          children: [
                            SizedBox(width: 35,),
                            GestureDetector(onTap: (){
                              setState(() {
                                Age++;
                              });},
                              child:Icon(Icons.add_circle,color: Colors.grey,size: 40,) ,),
                            SizedBox(width: 25,),
                            GestureDetector(onTap: (){
                              setState(() {
                                Age--;
                              });},
                              child:Icon(Icons.remove_circle,color: Colors.grey,size: 40,) ,),
                                SizedBox(width: 10,)
                          ],
                        ),
                           SizedBox(height: 10,)



                        ],


               ),
                ),
                   ),


               Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 190,
                  width: 165,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color:active,
                  ),
                   child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Text('Weight',style:TextStyle(fontSize: 30,color: Colors.grey),),
                      SizedBox(height: 10,),
                      Text(Weight.toString(),style:TextStyle(fontSize: 40,color: Colors.white),),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          SizedBox(width: 35,),
                          GestureDetector(onTap: (){
                            setState(() {
                              Weight++;
                            });},
                            child:Icon(Icons.add_circle,color: Colors.grey,size: 40,) ,),
                          SizedBox(width: 25,),
                          GestureDetector(onTap: (){
                            setState(() {
                              Weight--;
                            });},
                            child:Icon(Icons.remove_circle,color: Colors.grey,size: 40,) ,),
                          SizedBox(width: 10,)
                        ],
                      ),
                      SizedBox(height: 10,),


                    ],

                  ),

                )
              )

            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 45,width: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color:Colors.pink,

            ),

            child: Center(child: Text('CALCULATE BMI',style: TextStyle(color: Colors.black,fontSize: 20),)),
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






