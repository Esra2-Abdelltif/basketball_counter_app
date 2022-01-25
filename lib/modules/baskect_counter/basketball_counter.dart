import 'package:basketball_counter_app/shared/components/componets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class basketball_counter extends StatefulWidget {
  @override
  State<basketball_counter> createState() => _basketball_counterState();
}

class _basketball_counterState extends State<basketball_counter> {
  //const basketball_counter({Key? key}) : super(key: key);
   int teamApoint=0;

   int teamBpoint=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ponint Counter',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.orange,

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(

                  children: [
                    Text('Team A',style: TextStyle(fontSize: 35,)),
                    Text('$teamApoint',style: const TextStyle(fontSize: 140,)),
                    defultEvelatedButton(title: 'Add 1 Point',
                        function: (){
                      setState(() {
                        teamApoint++;
                      });
                    }),
                    const SizedBox(height: 15,),
                    defultEvelatedButton(title: 'Add 2 Point',function: (){
                      setState(() {
                        teamApoint+=2;
                      });
                    }),
                    const SizedBox(height: 15,),
                    defultEvelatedButton(title: 'Add 3 Point',function: (){
                      setState(() {
                        teamApoint+=3;
                      });
                    }),
                    const SizedBox(height: 15,),



                  ],),
               Container(
                 height: 450,
                 child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey[350],


                    ),
               ),
                Column(

                  children: [
                    Text('Team B',style: TextStyle(fontSize: 35,)),
                    Text('$teamBpoint',style: const TextStyle(fontSize: 140,)),
                    defultEvelatedButton(title: 'Add 1 Point',function: (){
                      setState(() {
                        teamBpoint++;
                      });
                    }),
                    SizedBox(height: 15,),
                    defultEvelatedButton(title: 'Add 2 Point',function: (){
                      setState(() {
                        teamBpoint+=2;
                      });
                    }),
                    SizedBox(height: 15,),
                    defultEvelatedButton(title: 'Add 3 Point',function: (){
                      setState(() {
                        teamBpoint+=3;
                      });
                    }),
                    SizedBox(height: 15,),


                  ],),
              ],
            ),
          ),
          SizedBox(height: 60,),
          defultEvelatedButton(title: 'Reset',function: (){
            setState(() {
              teamApoint=0;
              teamBpoint=0;
            });
          }),
        ],
      ),


    );
  }
}
