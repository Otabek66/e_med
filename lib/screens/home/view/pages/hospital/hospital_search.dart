import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/core/constants/logo/logo_widget.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/home/cubit/home_cubit.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:e_med/widgets/text_form_widget.dart';
import 'package:e_med/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HospitalSearchView extends StatelessWidget {
  const HospitalSearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var himage = context.watch<HomeCubit>().himage;
    var hinfo = context.watch<HomeCubit>().hinfo;
    return Scaffold(
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
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 18, bottom: 10),
                  child: SizedBox(
                    height: 36,
                    child: TextFormField(
                      decoration: inputDecarartion(),
                    ),
                  ),
                ),
              ),
              Text("Recommended hospitals for you"),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (ctx, ind) {
                   
                    return Column(
                      children: [
                        InkWell(
                          child: Container(
                            width: context.w * 0.893,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              child: FadeInImage(
                                fit: BoxFit.cover,
                                placeholder:
                                    AssetImage('assets/gifs/loading.gif'),
                                image: AssetImage(himage[ind]),
                              ),
                            ),
                          ),
                          onTap: (){
                            context.read<HomeCubit>().changeState(HospitalInfoState());
                          },
                        ),
                        TextWidget.textwidget(hinfo[ind].name),
                        Text(context.watch<HomeCubit>().hinfo[ind].location)
                      ],
                    );
                  },
                  itemCount: 4,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration inputDecarartion() {
    return InputDecoration(
      hintText: "Search hospital",
      hintStyle: const TextStyle(
        color: Colors.grey,
      ),
      suffixIcon: Icon(Icons.search),
      fillColor: ColorConst.grey2,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
