import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/screens/home/view/pages/treatments/details/taken_drug_details.dart';
import 'package:flutter/material.dart';

class DrugListTileWidget extends StatelessWidget {
  String? title;
  String? mg;
  String? fromdo;
  DrugListTileWidget({
    Key? key,
    this.title,
    this.mg,
    this.fromdo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> TakenDrugDetailsView(drugName: title.toString(), mg: mg.toString(), fromdo: fromdo.toString())));
          },
          title: Text(
            this.title.toString(),
            style: FontStyles.headline3s,
          ),
          subtitle: Text(
            this.mg.toString(),
            style: FontStyles.headline4s,
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.chevron_right_rounded),
              Text(
                this.fromdo.toString(),
                style: FontStyles.headline52,
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
        )
      ],
    );
  }
}
