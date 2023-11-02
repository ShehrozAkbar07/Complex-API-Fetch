import 'dart:convert';

import 'package:apifetch/practice/post_api_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostApiUserCreation extends StatefulWidget {
  @override
  State<PostApiUserCreation> createState() => _PostApiUserCreationState();
}

class _PostApiUserCreationState extends State<PostApiUserCreation> {
  postapi2model? _user;

  TextEditingController name = TextEditingController();
  TextEditingController job = TextEditingController();
  var url = "https://reqres.in/api/users";

  Future<postapi2model> post(String name, String job) async {
    postapi2model? postmodel;
    http.Response response = await http.post(Uri.parse(url), body: {
      "name": name,
      "job": job,
    });

    var jsonresponce = json.decode(response.body);
    postmodel = postapi2model.fromJson(jsonresponce);

    return postmodel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: name,
            decoration: const InputDecoration(
              hintText: "Name",
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: job,
            decoration: const InputDecoration(
              hintText: "Job",
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
              onTap: () async {
                postapi2model user = await post(name.text, job.text);

                setState(() {
                  _user = user;
                });
              },
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Text("Create User"),
              )),
          const SizedBox(
            height: 30,
          ),
          if (_user != null)
            Text(
                "${_user?.name} is a ${_user?.job} at Solvitech  ${_user!.createdAt} & id is ${_user!.id}")
          else
            const CircularProgressIndicator(),
        ],
      ),
    ));
  }
}
