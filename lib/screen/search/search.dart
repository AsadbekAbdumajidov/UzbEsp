import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzesp/base/muloqot.dart';

class SerarchPage extends StatefulWidget {
  SerarchPage({Key? key}) : super(key: key);

  @override
  State<SerarchPage> createState() => _SerarchPageState();
}

class _SerarchPageState extends State<SerarchPage> {
  String? qidir;

  String? qidir2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 105, 0, 241),
        leading: const Text(""),
        leadingWidth: 0,
        title: CupertinoSearchTextField(
          // itemColor: Colors.white,
          backgroundColor: Colors.white.withOpacity(0.5),
          onChanged: (qidir) {
            print(qidir);
            setState(() {});
          },
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 105, 0, 241).withOpacity(0.5),
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(itemBuilder: ((context, index) {
          // xayrlashish[index]["uz"] == qidir
          //     ? qidir2 = xayrlashish[index]["uz"]
          //     : Text("data");
          return ListTile(
            tileColor: Colors.white,
            hoverColor: Colors.white,
            title: Text("$qidir2"),
          );
        })),
      ),
    );
  }
}
