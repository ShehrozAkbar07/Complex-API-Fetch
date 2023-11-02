// import 'package:apifetch/practice/sign_up.dart';
// import 'package:apifetch/practice/upload_image.dart';
// import 'package:flutter/material.dart';

// class PostApiScreen extends StatefulWidget {
//   const PostApiScreen({Key? key}) : super(key: key);

//   @override
//   _PostApiScreenState createState() => _PostApiScreenState();
// }

// class _PostApiScreenState extends State<PostApiScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Api Course'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//         child: Column(
//           children: [
//             ReusableWidget(
//               title: 'Login & SignUp',
//               subTitle:
//                   'Login and sign up api integration using open source api',
//               onPress: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => signupsignin()));
//               },
//             ),
//             ReusableWidget(
//               title: 'Upload image to server',
//               subTitle: 'Upload image to server using image path(url)',
//               onPress: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => UploadImageScreen()));
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ReusableWidget extends StatelessWidget {
//   late String title, subTitle;
//   final VoidCallback onPress;

//   ReusableWidget(
//       {Key? key,
//       required this.title,
//       required this.subTitle,
//       required this.onPress})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPress,
//       child: ListTile(
//         leading: const CircleAvatar(
//           radius: 25,
//           child: Text('G'),
//         ),
//         title: Text(title),
//         subtitle: Text(subTitle),
//         trailing: const Icon(Icons.arrow_forward),
//       ),
//     );
//   }
// }
