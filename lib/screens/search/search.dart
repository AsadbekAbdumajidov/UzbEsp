import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzesp/base/bolim.dart';
import 'package:uzesp/core/constants/const_color.dart';

import '../../provider/search_provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController bolim = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var order = context.watch<SearchProvider>().order.toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstColor.siyohColor,
        leading: const Text(""),
        leadingWidth: 0,
        title: CupertinoSearchTextField(
          itemColor: Colors.white,
          controller: bolim,
          backgroundColor: Colors.white.withOpacity(0.1),
          onChanged: (v) {
            context.read<SearchProvider>().chiqar(v, bolimlar);
          },
        ),
      ),
    );
  }
}
