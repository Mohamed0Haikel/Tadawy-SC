import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  TestModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
}

class HttpService {
  Future<List<TestModel>> getRequest() async {
    String url = 'https://jsonplaceholder.typicode.com/posts';
    final response = await http.get(Uri.parse(url));
    var responseData = jsonDecode(response.body);
    List<TestModel> tests = [];

    for (var data in responseData) {
      TestModel test = TestModel(
        userId: data['userId'],
        id: data['id'],
        title: data['title'],
        body: data['body'],
      );
      tests.add(test);
    }
    return tests;
  }
}



// List<TestModel> tests = [
//   TestModel(
//     userId: 1,
//     id: 1,
//     title:
//         "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//     body:
//         "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto",
//   ),
//   TestModel(
//     userId: 1,
//     id: 2,
//     title: "qui est esse",
//     body:
//         "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla",
//   ),
//   TestModel(
//     userId: 1,
//     id: 3,
//     title:
//         "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//     body:
//         "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto",
//   ),
// ];

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final HttpService tests = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: FutureBuilder(
        future: tests.getRequest(),
        builder: (BuildContext context, AsyncSnapshot test){
          if(test.data == null){
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: test.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(test.data[index].title),
                  subtitle: Text(test.data[index].body),
                );
              },
            );
          }
        },
      )
    );
  }
}


// ListView.builder(
//         itemCount: tests.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(tests[index].title),
//             subtitle: Text(tests[index].body),
//           );
//         },
//       ),