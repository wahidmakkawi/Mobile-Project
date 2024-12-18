import 'package:flutter/material.dart';

class classes extends StatefulWidget {
  classes({Key ?key}) : super(key: key);

  @override
  _classesState createState() {
    return _classesState();
  }
}

class _classesState extends State<classes> {
  List<DateTimeContainer> dateTimeList = [
    DateTimeContainer(date: '2024-12-20', time: '12:00 PM'),
    DateTimeContainer(date: '2024-12-21', time: '3:00 PM'),
    DateTimeContainer(date: '2024-12-22', time: '6:00 PM'),
  ];

  Widget displayDateTimeList() {
    return ListView.builder(
      itemCount: dateTimeList.length,
      itemBuilder: (context, index) {
        return dateTimeList[index].buildContainer();
      },
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Classes',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 70),
                  child: Container(

                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
class DateTimeContainer {
  final String date;
  final String time;

  DateTimeContainer({required this.date, required this.time});

  // Method to build a container with the date and time
  Widget buildContainer() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(onPressed: (){

          }, child: Row(
            children: [
              Text('Date: $date', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text('Time: $time', style: TextStyle(fontSize: 16)),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
