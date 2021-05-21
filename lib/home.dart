import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
 var date ="";
 String timeeee = "";
//  final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          Text("$date",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
          SizedBox(height:10),
          Text("Time Now",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
          SizedBox(height:10),
          Text("$timeeee",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
          SizedBox(height:10),
          InkWell(
            child: Text("Set Time And Date",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
            onTap: (){
_showDateTimeDialog(context).then((value) => snackBBar(context));
//ScaffoldMessenger.of(context).showSnackBar(snackBar);
//print("hellp");


            },


                        splashColor: Colors.red,
                        ),
                      SizedBox(height:5),
                    //  Text("___________________________",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),)
            
                      
            
                    ],
            
            
            
                  ),
                
                
                ),
              ),
              
                
            
            
            
                );
             }
            
            
            Future <void> _showDateTimeDialog(BuildContext context) async{
                var datee = await showDatePicker(context: context, initialDate: DateTime(2000), firstDate: DateTime(2000), lastDate: DateTime(2022));
              datee.month;
              datee.day;
              datee.year;
              var d = datee.year.toString() + "-"+ datee.month.toString() +"-"+ datee.day.toString();
               TimeOfDay  d2 = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                var d3 = d2.hour.toString() + "-"+d2.minute.toString();
              setState(() {
                date = d;
                timeeee = d3.toString();
              });
            //  _showTimeDialog(context);
         
              
                }
              
           //  Future  <void> _showTimeDialog(BuildContext context)async {
                //  var time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                  //print(time);
                  //setState(() {
                   // timeeee = time.toString();
                 // });
                //}



  Widget snackBBar(context){
    
   final snackBar = SnackBar(content:
    Text("Date : ${date} \n "
        "Time : ${timeeee.toString()}",textAlign: TextAlign.center,
    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
      ,backgroundColor: Colors.greenAccent);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}

