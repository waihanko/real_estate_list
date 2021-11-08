import 'package:flutter/material.dart';

import '../dummy_data.dart';

class LiveList extends StatefulWidget {
  final List<ItemOb> dummyList;

  const LiveList(this.dummyList, {Key? key}) : super(key: key);

  @override
  _LiveListState createState() => _LiveListState();
}

class _LiveListState extends State<LiveList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.dummyList.length,
      itemBuilder: (context, position) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20),
          ),
          clipBehavior: Clip.antiAlias,
          child: Container(
            height: MediaQuery.of(context).size.width * 0.7,
            color: Colors.green,
          ),
        );
      },
    );
  }
}
