import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/core/constants/radius/RadiusConst.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class DoctorsWidget extends StatelessWidget {
  final String name;
  final String pic;
  final String expert;
  final String hospital;
  const DoctorsWidget({this.hospital = '',this.expert = '',required this.pic, required this.name, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: context.h * 0.020),
        child: Column(children: [
          ListTile(
            subtitle: Text('$expert  \n$hospital', style: FontStyles.headline4s,),
            trailing: Icon(IconConst.arrow),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(RadiusConst.extraLarge),
              child: FadeInImage(
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/gifs/loading.gif'),
                image: AssetImage(pic),
                height: context.h * 0.15,
                width: context.w * 0.15,
              ),
            ),
            title: Text(
              name,
              style: FontStyles.headline3s,
            ),
          ),
          Divider(
            indent: context.w * 0.19,
            color: ColorConst.black,
          )
        ])
        );
  }
}
