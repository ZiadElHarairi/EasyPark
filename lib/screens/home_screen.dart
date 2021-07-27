import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/dummy_data.dart';
import '../widgets/wallet_screen.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  String value = 'Credit Card';
  List<String> items = ['Credit Card', 'Cash'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () => Navigator.pop(context), child: Icon(Icons.logout)),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Hello, Ziad!',
            style: TextStyle(fontSize: 27),
          ),
          centerTitle: true,
          // leading: IconButton(
          //   icon: Icon(
          //     Icons.menu,
          //   ),
          //   onPressed: () {},
          // ),
          //backgroundColor: Colors.greenAccent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.black, Colors.green],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              // Tab(icon: Icon(Icons.car_rental), text: 'Previous Visits'),
              Tab(icon: Icon(Icons.money), text: 'Wallet'),
            ],
          ),
          elevation: 15,
        ),
        body: TabBarView(
          children: [
            homePage(),
            // buildPage(context),
            walletPage(items, value),
          ],
        ),
      ),
    );
  }
}
// Widget buildPage(){
//   return 
// }
String phoneOfPatient = "";
Future<String> qrData() async {

  SharedPreferences prefs = await SharedPreferences.getInstance();
  int? id = prefs.getInt('id');
  String? userName = prefs.getString('userName');
  String? email = prefs.getString('email');
  String qr = '${id.toString()}-$userName-$email';
  print(qr);
 

  return qr;
  
  }

Future<String> qrmo = qrData();

Widget homePage() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);
  return Container(
    padding: EdgeInsets.only(top: 50),
    child: Column(
      children: [
        QrImage(
          data: '1-ZiadHatem-sts@gmail.com',
          size: 200,
        ),
        Card(
          color: Colors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Credit:',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 6.0),
                Text(
                  '1000 Points',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.purple,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Current Visit:',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 6.0),
                Text(
                  formattedDate,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

// Widget previousVisitsPage(BuildContext context){
//   return Column(children: DUMMY_VISITS.map((tx) {
//   }).toList(),);
// }

// Widget previousVisitsPage(BuildContext context) {
//   // final visits = DUMMY_VISITS.where((visit) {
//   //   return visit
//   // }).toList();
//   return Scaffold(
//     body: ListView.builder(
//         itemBuilder: (context, index) {
//           return Container(
//             child: Card(
//               color: Colors.purple,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(13.0)),
//               margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
//               child: Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: ListTile(
//                   title: Text('${DUMMY_VISITS[index].date}',
//                       style: TextStyle(color: Colors.white, fontSize: 18)),
//                   subtitle: Text(
//                     'Time In: ${DUMMY_VISITS[index].startTime}\nTime Out: ${DUMMY_VISITS[index].endTime}',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   trailing: Text(
//                     '\$${DUMMY_VISITS[index].amount}',
//                     style: TextStyle(
//                         fontSize: 23,
//                         color: Colors.green,
//                         fontWeight: FontWeight.w700),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//         itemCount: DUMMY_VISITS.length),
//   );
// }
