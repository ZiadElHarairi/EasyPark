import 'package:flutter/material.dart';

Widget walletPage(List<String> items, String value) {
  return Container(
    // body: Container(
    padding: EdgeInsets.only(top: 30),
    child: Column(
      children: [
        Card(
          color: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('My Wallet',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 40,
                            color: Colors.white)),
                    SizedBox(height: 15.0),
                    Text('Points: 1000',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white)),
                    SizedBox(height: 6.0),
                    Text('Credit Card: xxxxxxxxxxxx1234',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white)),
                  ]),
            ),
          ),
        ),
        // Row(
        //   children: [
        //     Card(
        //       color: Colors.purple,
        //       shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(13.0)),
        //       margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        //       child: Padding(
        //         padding: const EdgeInsets.all(12.0),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.stretch,
        //           children: [
        //             Text(
        //               'Pay with card',
        //               style: TextStyle(
        //                 fontWeight: FontWeight.w300,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //     Card(
        //       color: Colors.purple,
        //       shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(13.0)),
        //       margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        //       child: Padding(
        //         padding: const EdgeInsets.all(12.0),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.stretch,
        //           children: [
        //             Text(
        //               'Cash',
        //               style: TextStyle(
        //                 fontWeight: FontWeight.w300,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     )
        //   ],
        // )
      ],
    ),
  );
}

//  body: Card(
//         // color: Colors.black54,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(13.0),
//         ),
//         margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Text('My Wallet',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 40,
//                       color: Colors.white)),
//               SizedBox(height: 15.0),
//               Text('Points: 1000',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 30,
//                       color: Colors.white)),
//               SizedBox(height: 6.0),
//               Text('Credit Card: xxxxxxxxxxxx1234',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 30,
//                       color: Colors.white)),

//             ],
//           ),
//         ),
//       ),
