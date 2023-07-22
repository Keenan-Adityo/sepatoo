import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpFormField extends StatelessWidget {
  final bool last;

  const OtpFormField({
    required this.last,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 70,
      child: TextFormField(
        onChanged: (value) {
          // if (last) {
          //   BlocProvider.of<OtpBloc>(context).add(OnVerify(
          //     state.code1.text +
          //         state.code2.text +
          //         state.code3.text +
          //         state.code4.text +
          //         state.code5.text +
          //         state.code6.text,
          //   ));
          // } else if (value.length == 1) {
          //   FocusScope.of(context).nextFocus();
          // } else if (value.isEmpty) {
          //   FocusScope.of(context).previousFocus();
          // }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: kBodyText.copyWith(color: Colors.black),
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: InputDecoration(
          fillColor: const Color(0xffF7F7F9),
          filled: true,
          hintStyle: kBodyText,
          hintText: "X",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none),
          isDense: true,
          focusColor: Colors.green,
        ),
      ),
    );
  }
}

// import 'package:core/presentation/bloc/otp_bloc/otp_bloc.dart';
// import 'package:core/styles/text_styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class OtpFormField extends StatelessWidget {
//   final TextEditingController controller;
//   final bool last;

//   const OtpFormField({
//     required this.controller,
//     required this.last,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 41,
//       width: 39,
//       child: BlocBuilder<OtpBloc, OtpState>(
//         builder: (context, state) {
//           return TextFormField(
//             onChanged: (value) {
//               // if (last) {
//               //   BlocProvider.of<OtpBloc>(context).add(OnVerify(
//               //     state.code1.text +
//               //         state.code2.text +
//               //         state.code3.text +
//               //         state.code4.text +
//               //         state.code5.text +
//               //         state.code6.text,
//               //   ));
//               // } else if (value.length == 1) {
//               //   FocusScope.of(context).nextFocus();
//               // } else if (value.isEmpty) {
//               //   FocusScope.of(context).previousFocus();
//               // }
//             },
//             keyboardType: TextInputType.number,
//             textAlign: TextAlign.center,
//             style: kBodyText.copyWith(color: Colors.black),
//             inputFormatters: [LengthLimitingTextInputFormatter(1)],
//             controller: controller,
//             decoration: InputDecoration(
//                 hintStyle: kBodyText,
//                 border: const OutlineInputBorder(),
//                 enabledBorder: const OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.grey),
//                 ),
//                 disabledBorder: const OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.grey),
//                 ),
//                 isDense: true,
//                 contentPadding: const EdgeInsets.all(10),
//                 focusColor: Colors.green),
//           );
//         },
//       ),
//     );
//   }
// }
