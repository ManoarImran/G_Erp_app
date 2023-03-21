
import 'package:flutter/material.dart';
class ChatBoxPage extends StatelessWidget {
  const ChatBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatboxScreen();
  }
}

class ChatboxScreen extends StatefulWidget {
  @override
  _ChatboxScreenState createState() => _ChatboxScreenState();
}

class _ChatboxScreenState extends State<ChatboxScreen> {
  final List<String> messages = [

  ];

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('💬 Inbox'),
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),

                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(messages[index]),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(

              children: [

                Expanded(

                  child: TextField(

                    controller: _textController,
                    decoration: InputDecoration(

                      hintText: 'Type your message',
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.all(10),
                  icon: Icon(Icons.send),
                  onPressed: () {
                    setState(() {
                      messages.add(_textController.text);
                      _textController.clear();
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}