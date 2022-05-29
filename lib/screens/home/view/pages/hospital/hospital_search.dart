import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/core/constants/logo/logo_widget.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:e_med/widgets/text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class HospitalSearchView extends StatelessWidget {
  const HospitalSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFF9F9F9),
      //   leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/person.png")),
      //   title: SizedBox(
      //     width: context.w * 0.213,
      //     child: SvgPicture.asset("assets/images/logo/logo_two.svg")),
      // ),
      body: SafeArea(
        child: SizedBox(
          height: context.h,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(
                trailing: IconConst.filter,
                leading: InkWell(
                  child: const CircleAvatar(
                    foregroundImage: AssetImage("assets/icons/person.png"),
                  ),
                  onTap: () {},
                ),
                center: SizedBox(
                  height: context.h * 0.050,
                  width: context.w * 0.3,
                  child: IconConst.bluelogo,
                ),
                bottom: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 18,bottom: 10),
                  child: SizedBox(
                    height: 36,
                    child: TextFormField(
                      decoration: inputDecarartion(),
                     
                    ),
                  ),
                ),
              ),
              Text("Recommended hospitals for you")
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration inputDecarartion() {
    return InputDecoration(
                      hintText: "Search hospital",
                      hintStyle: const TextStyle(color: Colors.grey),
                       suffixIcon: Icon(Icons.search),
                      fillColor: ColorConst.grey2,
                      
                      focusedBorder: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(15.0),
                      ),

                    );
  }
}
