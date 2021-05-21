	
 
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
 var date ="";
 String timeeee = "";
 final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("DSC Alzahr"),
        centerTitle: true,

      ),
  body: Center(
    child: Container(
            height: 180,
            width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(89),
          color: Colors.teal,
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Date  Now:",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
          SizedBox(height:10),
          Text("$date",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
          SizedBox(height:10),
          Text("Time Now",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
          SizedBox(height:10),
          Text("$timeeee",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
          SizedBox(height:10),
          InkWell(
            child: Text("Set Time And Date",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
            onTap: (){
_showDateTimeDialog();
ScaffoldMessenger.of(context).showSnackBar(snackBar);

            },


                        splashColor: Colors.red,
                        ),
                      SizedBox(height:5),
                    //  Text("___________________________",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),)
            
                      
            
                    ],
            
            
            
                  ),
                
                
                ),
              ),
              
                ),
            
            
            
                );
             }
            
            
              void _showDateTimeDialog() async{
                var datee = await showDatePicker(context: context, initialDate: DateTime(2000), firstDate: DateTime(2000), lastDate: DateTime(2022));
              datee.month;
              datee.day;
              datee.year;
              var d = datee.year.toString() + "-"+ datee.month.toString() +"-"+ datee.day.toString();
              setState(() {
                date = d;
              });
              _showTimeDialog();
         
              
                }
              
                void _showTimeDialog()async {
                  var time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                  print(time);
                  setState(() {
                    timeeee = time.toString();
                  });
                }



}
