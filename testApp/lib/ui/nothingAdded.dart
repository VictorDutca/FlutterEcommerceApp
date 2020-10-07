import 'package:flutter/material.dart';

class NothingAdded extends StatelessWidget {
  const NothingAdded({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/cista_1.png"),
        ),
      ),
    );
  }
}
