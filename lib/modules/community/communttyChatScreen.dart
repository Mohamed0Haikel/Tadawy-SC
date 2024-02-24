// import 'package:flutter/material.dart';



// class Message {
//   final String text;
//   final bool isMe;

//   Message(this.text, this.isMe);
// }

// class communityScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ChatScreen(),
//     );
//   }
// }

// class ChatScreen extends StatefulWidget {
//   @override
//   State createState() => ChatScreenState();
// }

// class ChatScreenState extends State<ChatScreen> {
//   final List<Message> _messages = [];
//   final TextEditingController _textController = TextEditingController();

//   void _handleSubmitted(String text) {
//     if (text.isNotEmpty) {
//       Message message = Message(text, true);
//       setState(() {
//         _messages.insert(0, message);
//       });
//       _textController.clear();
//       // Simulate a reply after a short delay
//       Future.delayed(Duration(seconds: 1), () {
//         _handleReply();
//       });
//     }
//   }

//   void _handleReply() {
//     Message message = Message('This is a reply.', false);
//     setState(() {
//       _messages.insert(0, message);
//     });
//   }

//   Widget _buildMessage(Message message) {
//     return Row(
//       mainAxisAlignment:
//           message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
//       children: [
//         Container(
//           margin: const EdgeInsets.all(10.0),
//           padding: const EdgeInsets.all(15.0),
//           decoration: BoxDecoration(
//             color: message.isMe ? Colors.blue : Colors.grey[300],
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           child: Text(
//             message.text,
//             style: TextStyle(
//               color: message.isMe ? Colors.white : Colors.black,
//               fontFamily: 'ModernFont', // Change to your desired modern font
//               fontSize: 16.0, // Adjust font size as needed
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildTextComposer() {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Row(
//         children: [
//           Flexible(
//             child: TextField(
//               controller: _textController,
//               onSubmitted: _handleSubmitted,
//               decoration: InputDecoration.collapsed(
//                 hintText: 'Type your message...',
//                 hintStyle: TextStyle(color: Colors.grey),
//               ),
//               style: TextStyle(
//                 fontFamily: 'ModernFont', // Change to your desired modern font
//                 fontSize: 16.0, // Adjust font size as needed
//               ),
//             ),
//           ),
//           IconButton(
//             icon: Icon(Icons.send),
//             onPressed: () => _handleSubmitted(_textController.text),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'General Chat',
//           style: TextStyle(
//             fontFamily: 'ModernFont', // Change to your desired modern font
//             fontSize: 20.0, // Adjust font size as needed
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 3, 226, 215),
//       ),
//       body: Column(
//         children: [
//           Flexible(
//             child: ListView.builder(
//               reverse: true,
//               itemCount: _messages.length,
//               itemBuilder: (context, index) {
//                 return _buildMessage(_messages[index]);
//               },
//             ),
//           ),
//           Divider(height: 1.0),
//           _buildTextComposer(),
//         ],
//       ),
//     );
//   }
// }
