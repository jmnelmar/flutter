import 'package:flutter/material.dart';
import 'package:timer_app/widgets/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TimerHomePage extends StatelessWidget {
  final double defaultPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: AppBar(
            title: Text('My work timer'),
          ),
        ),
        body: LayoutBuilder(
          
          builder: 
          (BuildContext context, BoxConstraints constraints)
          {  
            final double availableWidth = constraints.maxWidth;
            return Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(defaultPadding)),

                    Expanded(
                        child: ProductivityButton(
                      color: Color(0xff009688),
                      text: "Work",
                      onPressed: () {},
                      size: 30.0,
                    )),

                    Padding(padding: EdgeInsets.all(defaultPadding),),
                
                    Expanded(
                        child: ProductivityButton(
                      color: Color(0xff607D8B),
                      text: "Short Break",
                      onPressed: () {},
                      size: 30.0,
                    )),
                
                    Padding(padding: EdgeInsets.all(defaultPadding),),
                
                    Expanded(
                        child: ProductivityButton(
                      color: Color(0xff455A64),
                      text: "Long Break",
                      onPressed: () {},
                      size: 30.0,
                    )),

                    Padding(padding: EdgeInsets.all(defaultPadding),),
                  ],
                ),
                
                Expanded(
                  child: 
                    CircularPercentIndicator(
                      radius: availableWidth / 2,
                      lineWidth: 10.0,
                      percent: 1,
                      center: Text("30:00", style: Theme.of(context).textTheme.headline4),
                      progressColor: Color(0xff009688),
                    ),
                  ),

                Row(
                  children: <Widget>[
                    
                    Padding(padding: EdgeInsets.all(defaultPadding),),

                    Expanded(
                      child: ProductivityButton(
                        color: Color(0xff212121),
                        text: 'Stop',
                        onPressed: (){},
                        size: 10.0,
                      )
                    ),

                    Padding(padding: EdgeInsets.all(defaultPadding),),
                
                    Expanded(
                      child: ProductivityButton(
                        color: Color(0xff212121),
                        text: 'Restart',
                        onPressed: (){},
                        size: 10.0,
                      )
                    ),

                  ],
                )
              ],
            );
          }
        ),
    );
  }
}
