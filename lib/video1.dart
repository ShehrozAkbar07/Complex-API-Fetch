// import 'dart:convert';

// import 'package:apifetch/post_model.dart';
// import 'package:flutter/material.dart';
// import "package:http/http.dart" as http;

// class Fetch extends StatefulWidget {
//   const Fetch({Key? key}) : super(key: key);

//   @override
//   State<Fetch> createState() => _FetchState();
// }

// class _FetchState extends State<Fetch> {
//   List<PostModel> postlist = [];
//   Future<List<PostModel>> fetchData() async {
//     final responce =
//         await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

//     var data = jsonDecode(responce.body.toString());
//     if (responce.statusCode == 200) {
//       for (var i in data) {
//         postlist.add(PostModel.fromJson(i));
//       }
//       return postlist;
//     } else {
//       return postlist;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder(
//                 future: fetchData(),
//                 builder: (context, snapshot) {
//                   if (!snapshot.hasData) {
//                     return Text('Loading');
//                   } else {
//                     return ListView.builder(
//                         itemCount: postlist.length,
//                         itemBuilder: (context, index) {
//                           return Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 postlist[index].title.toString(),
//                                 style: const TextStyle(
//                                     fontWeight: FontWeight.bold, fontSize: 18),
//                               ),
//                               SizedBox(height: 10),
//                               Text(postlist[index].body.toString()),
//                             ],
//                           );
//                         });
//                   }
//                 }),
//           )
//         ],
//       ),
//     ));
//   }
// }
