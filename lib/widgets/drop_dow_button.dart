import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/home/view/pages/calendar/appointment/cubit/appointment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropDownWidget extends StatelessWidget {
  List items = [];
  String text;
  DropDownWidget({required this.text, Key? key, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButtonHideUnderline(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: DropdownButton2(
            itemHeight: context.h * 0.1,
            isExpanded: true,
            hint: Row(
              children: [
                const SizedBox(
                  width: 2,
                ),
                Expanded(
                  child: Text(
                    text,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: ColorConst.kPrimaryColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            onChanged: (value) {
              context.read<AppointmentCubit>().collectInfo(value, items);
            },
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 25,
            iconDisabledColor: Colors.grey,
            buttonHeight: context.h * 0.08,
            buttonWidth: context.w,
            buttonPadding: const EdgeInsets.only(left: 20, right: 20),
            buttonDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: Colors.black26,
              ),
              color: ColorConst.white,
            ),
            itemPadding: const EdgeInsets.only(left: 14, right: 14),
            dropdownMaxHeight: 200,
            dropdownWidth: 200,
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
            ),
            scrollbarRadius: const Radius.circular(40),
            scrollbarThickness: 6,
            scrollbarAlwaysShow: true,
            offset: const Offset(-20, 0),
          ),
        ),
      ),
    );
  }
}
