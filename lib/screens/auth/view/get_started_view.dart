import 'dart:math';

import 'package:e_med/core/constants/logo/logo_widget.dart';
import 'package:e_med/core/constants/padding/padding_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Center(
            child: Logo.logo(),
          ),
        ),
        Expanded(
            child: Column(
          children: [
            Padding(
              padding: PaddingConst.kPrimaryPadding,
              child: Text(""),
            )
          ],
        ))
      ]),
    );
  }
}
