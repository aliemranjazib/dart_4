import 'package:flutter/material.dart';

class MoreDetails extends StatelessWidget {
  static const routeName = "/more-detail";

  @override
  Widget build(BuildContext context) {
    final routTitle = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(routTitle),
      ),
    );
  }
}
