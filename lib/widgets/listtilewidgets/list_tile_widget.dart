import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/screens/home/view/pages/treatments/details/treatment_details.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  String? title;
  String? subtitle1;
  String? subtitle2;
  ListTileWidget({
    Key? key,
    this.title,
    this.subtitle1,
    this.subtitle2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (__)=> TreatmentDetailsView(name: subtitle1.toString(), clinic: subtitle2.toString())));
          },
          title: Text(
        this.title.toString(),
        style: FontStyles.headline3s,
          ),
          subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.subtitle1.toString(),
            style: FontStyles.headline4s,
          ),
          Text(
            this.subtitle2.toString(),
            style: FontStyles.headline6s,
          ),
        ],
          ),
          trailing: Icon(Icons.chevron_right_rounded),
        ),
        Divider(thickness: 1,)
      ],
    );
  }
}
