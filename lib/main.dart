import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_table_with_sticky_headers/table_ui_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      minTextAdapt: true,
      splitScreenMode: true,
      
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child:  TableUiScreen(columns: [],rows: [],),
    );
   }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: StickyDataTable(),
//       ),
//     );
//   }
// }

// class StickyDataTable extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: DataTable(
//          // headingRowHeight: 50.w,
//           //   columnSpacing: 50.w,
//           //    dataTextStyle:
//           //      const TextStyle(color: Color.fromARGB(255, 9, 11, 61)),
//           //  headingRowColor: MaterialStateProperty.resolveWith<Color?>(
//           //    (Set<MaterialState> states) {
//           //      return const Color.fromARGB(255, 228, 222, 222)
//           //         .withOpacity(0.5);
//           //    },
//           // ),
//             columns: List.generate(
//               10, // Replace with the number of columns in your table
//               (index) => DataColumn(
//                 label: Text('Column $index'),
//               ),
//             ),
//             rows: List.generate(
//               50, // Replace with the number of rows in your table
//               (index) => DataRow(
//                 cells: List.generate(
//                   10, // Replace with the number of columns in your table
//                   (cellIndex) => DataCell(
//                     Text('Data $index'),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           top: 0,
//           left: 0,
//           right: 0,
//           child: Container(
//             color: Colors.white,
//             padding: EdgeInsets.symmetric(horizontal: 10.0),
//             child: Row(
//               children: List.generate(
//                 10, // Replace with the number of columns in your table
//                 (index) => Expanded(
//                   child: Container(
//                     padding: EdgeInsets.symmetric(vertical: 8.0),
//                     child: Text(
//                       'Column $index',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }