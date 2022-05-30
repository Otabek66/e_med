import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/widgets/showmodal_widget.dart';
import 'package:flutter/material.dart';

class MoreListTileWidget extends StatelessWidget {
  String title;
  String mg;
  MoreListTileWidget({
    Key? key,
    required this.title,
    required this.mg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Row(
            children: [
              Text(title, style: FontStyles.headline3s),
              Spacer(),
              Text(
                mg,
                style: FontStyles.headline4s,
              ),
            ],
          ),
          trailing: SizedBox(
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.chevron_right_rounded)),
          ),
          onTap: () {
            ShowModalWidget.showModal(context, title, mg);
          },
        ),
        Divider(
          thickness: 1,
        )
      ],
    );
  }
}
