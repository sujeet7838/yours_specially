// import 'package:flutter/material.dart';
// import 'package:yourspecially/src/features/questions/question_two.dart';
// import 'question_one.dart';
// import 'question_three.dart';
// import 'qstn_one.dart';

// class Questions extends StatefulWidget {
//   const Questions({super.key});

//   @override
//   State<Questions> createState() => _QuestionsState();
// }

// class _QuestionsState extends State<Questions> {
//   final controller = PageController();

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(bottom: 80),
//       child: PageView(
//         controller: controller,
//         children: [
//           QstnOne(),
//           // QuestionOne(
//           //   onPressed: () => controller.nextPage(
//           //       duration: const Duration(milliseconds: 500),
//           //       curve: Curves.easeInOut),
//           // ),
//           QuestionTwo(
//             onPressed: () => controller.nextPage(
//                 duration: const Duration(milliseconds: 500),
//                 curve: Curves.easeInOut),
//           ),
//           QuestionThree(),
//         ],
//       ),
//     );
//   }
// }
