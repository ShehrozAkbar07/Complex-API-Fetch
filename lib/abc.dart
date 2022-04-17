// import 'package:flutter/material.dart';
// import "package:http/http.dart" as http;
// import 'dart:convert';

// class Abc extends StatefulWidget {
//   const Abc({Key? key}) : super(key: key);

//   @override
//   State<Abc> createState() => _AbcState();
// }

// class _AbcState extends State<Abc> {
//   @override
//   Future<void> getUserApi() async {
//     final responce =
//         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

//     if (responce.statusCode == 200) {}
//     var data = jsonDecode(responce.body.toString());

//     if (responce.statusCode == 200) {
//       // data =jsonDecode(response.body.toString());
//       @override
//       Widget build(BuildContext context) {
//         return Scaffold(
//           body: Column(children: [
//             Expanded(
//                 child: FutureBuilder(
//               future: getUserApi(),
//               builder: ((context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return Text('Loading');
//                 } else {
//                   return Text(data[0]['name'].toString());
//                 }
//               }),
//             ))
//           ]),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
