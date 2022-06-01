import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/core/constants/logo/logo_widget.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/models/hospital_model.dart';
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
  HospitalSearchView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 18, bottom: 10),
                child: SizedBox(
                  height: 36,
                  child: TextFormField(
                    decoration: inputDecarartion(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: context.w * 0.05,
                    top: context.w * 0.04,
                    bottom: context.w * 0.04),
                child: const Text(
                  "Recommended hospitals for you",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (ctx, ind) {
                    return Column(
                      children: [
                        InkWell(
                          child: Container(
                              width: context.w * 0.893,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                    child: FadeInImage(
                                      fit: BoxFit.cover,
                                      placeholder:
                                          AssetImage('assets/gifs/loading.gif'),
                                      image: AssetImage(hinfo[ind].image),
                                    ),
                                  ),
                                  Positioned(
                                    left: 12,
                                    child: SizedBox(
                                      width: context.w * 0.28,
                                      child: Chip(
                                          label: Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icons/calendar.svg'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          //Here datas should come from database
                                          Text("Mon - Sat"),
                                        ],
                                      )),
                                    ),
                                  ),
                                  Positioned(
                                    left: 139,
                                    child: SizedBox(
                                      width: context.w * 0.32,
                                      child: Chip(
                                        label: Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/icons/clock.svg'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("9:00 - 18:00")
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                          onTap: () {
                            context
                                .read<HomeCubit>()
                                .changeState(HospitalInfoState(hinfo[ind]));
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
    return const InputDecoration(
      hintText: "Search hospital",
      hintStyle: const TextStyle(
        color: Colors.grey,
      ),
      suffixIcon: Icon(Icons.search),
      
    );
  }
}
