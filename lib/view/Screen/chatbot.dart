import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'dart:convert';
import 'dart:math';

import '../../core/constant/color.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Live Chat',
        theme: new ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        debugShowCheckedModeBanner: false,
        home: ChatScreen());
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = TextEditingController();

  Map<String, dynamic> responses = json.decode('''
  {
    
    "farewells": {
      "كيف اقدر اضيف كود خصم": ["يمكنك تسجيل الدخول واضافه كوبونك الموافق لشروط الاضافه  !"],
      "كيف اقدر اعرف اذا الكود فعال او لا": ["يمكنك قراءه تفاصيل الكود"
      ]
    },
    "thanks": {
      "متى ينزل كودي": ["يتم مراجعه الكود خلال ثلاث ايام ثم تظهر بالتطبيق "],
      "كم مده كود المتاجر ": ["يتم قبول الكود لمده 7 ايام بالتطبيق"] ,
       "الاكواد غير فعاله": ["جميع الاكواد فعاله ولكن بعض الاكواد للاستخدام مره واحده يرجى مراجعه تفاصيل الكود"]
    }
  }
''');

  String getResponse(String input) {
    String response = '''

عذرا لا استطيع معرفه ماتريد يمكنك طرح احد الاسئله التالية

1- كيف اقدر اضيف كود خصم ؟

2- كيف اقدر اعرف اذا الكود فعال او لا

3- متى ينزل كودي 

4- كم مده كود المتاجر 

5- الاكواد غير فعاله 

''';

    for (String category in responses.keys) {
      for (String key in responses[category].keys) {
        if (input.toLowerCase().contains(key)) {
          List<dynamic> options = responses[category][key];
          response = options[Random().nextInt(options.length)];
          break;
        }
      }
    }

    return response;
  }

  void _handleSubmitted(String text) async {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
      sender: Sender.User,
    );

    setState(() {
      _messages.insert(0, message);
    });

    // AIResponse response = await DialogflowAPI.detectIntent(text);
    String reply = getResponse(text);

    message = ChatMessage(
      text: reply,
      sender: Sender.Bot,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orange,
        title: Text('Chatbot'),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: TextField(
                    controller: _textController,
                    onSubmitted: _handleSubmitted,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Enter your message'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  child: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () => _handleSubmitted(_textController.text),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum Sender { User, Bot }

class ChatMessage extends StatelessWidget {
  ChatMessage({required this.text, required this.sender});

  final String text;
  final Sender sender;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
                child: sender == Sender.User
                    ? Icon(Icons.person)
                    : Icon(Icons.chat)),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: sender == Sender.User
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: <Widget>[
                Text(sender == Sender.User ? 'You' : 'Bot',
                    style: Theme.of(context).textTheme.subtitle1),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: Text(text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
