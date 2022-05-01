// import 'dart:convert';

// import 'package:apifetch/post_model.dart';
// import 'package:flutter/material.dart';
// import "package:http/http.dart" as http;

// class APi extends StatefulWidget {
//   const APi({Key? key}) : super(key: key);

//   @override
//   State<APi> createState() => _APiState();
// }

// class _APiState extends State<APi> {
//   List<PostModel> postList = [];

//   Future<List<PostModel>> getPostApi() async {
//     final responce =
//         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

//     var data = jsonDecode(responce.body.toString());

//     if (responce.statusCode == 200) {
//       for (Map<String, dynamic> i in data) {
//         postList.add(PostModel.fromJson(i));
//       }
//       return postList;
//     } else {
//       return postList;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(children: [
//         Expanded(
//           child: FutureBuilder(
//               future: getPostApi(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return const Text('Loading');
//                 } else {
//                   return ListView.builder(
//                       itemCount: postList.length,
//                       itemBuilder: (context, index) {
//                         return Card(
//                           child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text(
//                                   'Title:',
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 Text(postList[index].title.toString()),
//                                 const Text(
//                                   'Body:',
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 Text(postList[index].body.toString()),
//                               ]),
//                         );
//                       });
//                 }
//               }),
//         )
//       ]),
//     );
//   }
// }
