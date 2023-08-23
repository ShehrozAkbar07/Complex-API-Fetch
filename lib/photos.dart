import 'dart:convert';

import 'package:apifetch/post_model.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class Fetch2 extends StatefulWidget {
  const Fetch2({Key? key}) : super(key: key);

  @override
  State<Fetch2> createState() => _Fetch2State();
}

class _Fetch2State extends State<Fetch2> {
  List<PostModel2> postlist = [];
  Future<List<PostModel2>> fetch2Data() async {
    final responce = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));

    var data = jsonDecode(responce.body.toString());
    if (responce.statusCode == 200) {
      for (Map i in data) {
        PostModel2 model =
            PostModel2(title: i['title'], url: i['url'], id: i['id']);
        postlist.add(model);
      }
      return postlist;
    } else {
      return postlist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: fetch2Data(),
                builder: (context, AsyncSnapshot<List<PostModel2>> snapshot) {
                  // if (!snapshot.hasData) {
                  //   return Text('Loading');
                  // } else {

                  return ListView.builder(
                      itemCount: postlist.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(snapshot.data![index].title.toString()),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                snapshot.data![index].url.toString()),
                          ),
                        );
                        // return Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     Text(
                        //       postlist[index].title.toString(),
                        //       style: const TextStyle(
                        //           fontWeight: FontWeight.bold, fontSize: 18),
                        //     ),
                        //     SizedBox(height: 10),
                        //     Text(postlist[index].thumbnailUrl.toString()),
                        //     SizedBox(height: 10),

                        //   ],
                        // );
                      });
                  // }
                }),
          )
        ],
      ),
    ));
  }
}

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ExampleTwo extends StatefulWidget {
//   const ExampleTwo({Key? key}) : super(key: key);

//   @override
//   _ExampleTwoState createState() => _ExampleTwoState();
// }

// class _ExampleTwoState extends State<ExampleTwo> {
//   List<Photos> photosList = [];

//   Future<List<Photos>> getPhotos() async {
//     final response = await http
//         .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
//     var data = jsonDecode(response.body.toString());

//     print(data);
//     if (response.statusCode == 200) {
//       for (Map i in data) {
//         Photos photos = Photos(title: i['title'], url: i['url'], id: i['id']);
//         photosList.add(photos);
//       }
//       return photosList;
//     } else {
//       return photosList;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Api Course'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder(
//                 future: getPhotos(),
//                 builder: (context, AsyncSnapshot<List<Photos>> snapshot) {
//                   return ListView.builder(
//                       itemCount: photosList.length,
//                       itemBuilder: (context, index) {
//                         return ListTile(
//                           leading: CircleAvatar(
//                             backgroundImage: NetworkImage(
//                                 snapshot.data![index].url.toString()),
//                           ),
//                           subtitle:
//                               Text(snapshot.data![index].title.toString()),
//                           title: Text('Notes id:' +
//                               snapshot.data![index].id.toString()),
//                         );
//                       });
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Photos {
//   String title, url;
//   int id;
//   Photos({required this.title, required this.url, required this.id});
// }
