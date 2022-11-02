import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant name',
        style: TextStyle(fontSize: 25,color: Colors.black),),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: size.height,
        width: size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              'Voice of the Diner',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Container(
              height: size.height*0.15,
              
                child: Column(
                  children: [
                    Text('4.2',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.solidStar,size: 30,color: Colors.green,),
                        Icon(FontAwesomeIcons.solidStar,size: 30,color: Colors.green,),
                        Icon(FontAwesomeIcons.solidStar,size: 30,color: Colors.green,),
                        Icon(FontAwesomeIcons.solidStar,size: 30,color: Colors.green,),
                        Icon(FontAwesomeIcons.solidStar,size: 30,color: Colors.grey,),
                      ],
                    ),
                  ],
                ),
              
            ),
            Container(
              height: size.height*0.03,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Excellent',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),),
                      LinearPercentIndicator(
                        width: size.width*0.7,
                        lineHeight: 10.0,
                        percent: 0.49,
                        trailing: Text('49%',style: TextStyle(fontSize: 15,color: Colors.grey),),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Colors.white,
                        progressColor: Colors.green,

                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: size.height*0.03,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Good       ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),),
                      LinearPercentIndicator(
                        width: size.width*0.7,
                        lineHeight: 10.0,
                        percent: 0.3,
                        trailing: Text('30%',style: TextStyle(fontSize: 15,color: Colors.grey),),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Colors.white,
                        progressColor: Colors.lightGreen,

                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: size.height*0.03,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Average  ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),),
                      LinearPercentIndicator(
                        width: size.width*0.7,
                        lineHeight: 10.0,
                        percent: 0.14,
                        trailing: Text('14%',style: TextStyle(fontSize: 15,color: Colors.grey),),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Colors.white,
                        progressColor: Colors.lightGreenAccent,

                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: size.height*0.03,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Bad         ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),),
                      LinearPercentIndicator(
                        width: size.width*0.7,
                        lineHeight: 10.0,
                        percent: 0.03,
                        trailing: Text('   3%',style: TextStyle(fontSize: 15,color: Colors.grey),),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Colors.white,
                        progressColor: Colors.yellow,

                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: size.height*0.03,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Poor       ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),),
                      LinearPercentIndicator(
                        width: size.width*0.7,
                        lineHeight: 10.0,
                        percent: 0.04,
                        trailing: Text('   4%',style: TextStyle(fontSize: 15,color: Colors.grey),),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Colors.white,
                        progressColor: Colors.red,

                      )
                    ],
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}