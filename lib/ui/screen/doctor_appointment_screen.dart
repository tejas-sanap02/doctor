import 'package:demo/ViewModel/doctor_details_viewModel.dart';
import 'package:demo/models/doctors_details.dart';
import 'package:flutter/material.dart';

class DoctorAppointmentScreen extends StatefulWidget {
  const DoctorAppointmentScreen({super.key,});



  @override
  State<DoctorAppointmentScreen> createState() => _DoctorAppointmentScreenState();
}

class _DoctorAppointmentScreenState extends State<DoctorAppointmentScreen> {
  DoctorRequestModel requestModel = DoctorRequestModel();
  int dateIndex = 0;
  int timeIndex = 0;
  int userId = 33;
  int doctorId = 3;
  List timeList =[];
  List dateList =[];
  List monthsList = ['Jan', 'Feb', 'Mar', 'Apr', 'May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
  List weekdayList = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri','Sat','Sun'];


   Future<List<String>>dateConvert(List<Timeslot?>? fullDate)async{
     List<String>? tempDateList =[];
     //response timeslot length is more than 300 so i take limited range
     for(int i = 0; i <= 30 ; i++){
       setState(() {
         DateTime? date = fullDate?[i]?.date;
         var monthChar = date?.month;
         var weekdayChar = date?.weekday;
         String? year = date?.year.toString().substring(2,4);
         String? weekday = weekdayList[weekdayChar!-1 ];
         String? month = monthsList[monthChar!-1 ];
         String dates = "${weekday},${month} ${year}";
         print(dates);
         tempDateList.add(dates);
         print(tempDateList);
       });

     }
     return tempDateList;
  }
   Future<List<String>>timeConvert(List<Timeslot?>?  fullTime)async{
     List<String>? tempTimeList =[];
     for(int i=0 ;i<=30;i++){
       setState(() {
         String? time = fullTime?[i]?.timeFrom;
         String? hours = time?.substring(0,2);
         String? minute = time?.substring(3,5);
         var timeInHours = int.parse(hours??"");assert(timeInHours is int);
         var timeInMinute = int.parse(minute??"");assert(timeInMinute is int);
         print(timeInHours);
         print(timeInMinute);
         String? times = "${(timeInHours > 12 ? timeInHours - 12 : timeInHours).abs()}:${timeInMinute <= 9?  "0${timeInMinute}":timeInMinute} ${timeInHours >= 12 ? "PM" : "AM"}";
         print(times);
         tempTimeList.add(times);
         print(tempTimeList);
       });
     }
     return tempTimeList;
  }
  @override
  void initState() {
    setState(() {
      final apiHandler = DoctorDetailsViewModel();
      requestModel.userId = userId.toString();
      requestModel.doctorId = doctorId.toString();
      apiHandler.doctorDetails(request: requestModel).then((value) {
         List<Timeslot?>? dateTimeSlot = value?.first?.timeslots;
          dateConvert(dateTimeSlot).then((value) {
          dateList = value;
          print(dateList);
          });
          timeConvert(dateTimeSlot).then((value) {
            timeList = value;
            print(timeList);
          });
      });
      super.initState();
    });


  }
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(77, 77, 77, 1), //rgb(102, 102, 102)
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("Appointment"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child:(timeList.isNotEmpty &&dateList.isNotEmpty)? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Select Appointment date",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ),

              Container(
                height: 80,
                child: ListView.builder(
                  itemCount: dateList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: ChoiceChip(
                          labelPadding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 26),
                          label: Text(dateList[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  color: (dateIndex == index)
                                      ? Colors.black
                                      : Colors.white)),
                          selectedColor: (dateIndex == index)
                              ? Colors.white
                              : Colors.black45,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: Colors.black54,
                          onSelected: (bool select) {
                            if (select == true) {
                              print(select);
                              setState(() {
                                print(index);
                                dateIndex = index;
                                print(dateIndex);
                              });
                            }
                          },
                          selected: dateIndex == index,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Select Appointment time",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ),

              Container(
                height: 80,
                child: ListView.builder(
                  itemCount: timeList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: ChoiceChip(
                        labelPadding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 12),
                        label: Text(timeList[index],
                            style: TextStyle(
                                fontSize: 16,
                                color: (timeIndex == index)
                                    ? Colors.white
                                    : Colors.grey)),
                        selectedColor: const Color.fromRGBO(77, 77, 77, 1),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 2,
                                color: (timeIndex == index)
                                    ? Colors.white
                                    : Colors.grey),
                            borderRadius: BorderRadius.circular(12)),
                        backgroundColor: const Color.fromRGBO(77, 77, 77, 1),
                        onSelected: (bool select) {
                          if (select) {
                            setState(() {
                              print(index);
                              timeIndex = index;
                              print(timeIndex);
                            });
                          }
                        },
                        selected: timeIndex == index,
                      ),
                    );
                  },
                ),
              ),
            ],
          ):Center(child: CircularProgressIndicator()),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }


}