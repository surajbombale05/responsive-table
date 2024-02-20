import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TableUiScreen extends StatefulWidget {
    double? tableDataWidth = double.infinity;
    double? headingRowHeight;
    double? columnSpacing;
    TextStyle? dataTextStyle;
    MaterialStateProperty<Color?>? headingRowColor;
    TableBorder? border;
    Decoration? decoration;
    List<DataColumn> columns;
    List<DataRow> rows;

    TableUiScreen({
    super.key,
    this.tableDataWidth,
    this.headingRowHeight,
    this.columnSpacing,
    this.dataTextStyle,
    this.headingRowColor,
    this.border,
    this.decoration,
    required this.columns,
    required this.rows,

  });

  @override
  State<TableUiScreen> createState() => _TableUiScreenState();
}


class _TableUiScreenState extends State<TableUiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: SizedBox(
                          width: widget.tableDataWidth,
                          child: DataTable(
                            headingRowHeight: widget.headingRowHeight,
                            columnSpacing: widget.columnSpacing,
                            dataTextStyle: widget.dataTextStyle,
                            headingRowColor:
                                widget.headingRowColor,
                            columns: widget.columns,
                            rows: widget.rows,
                            border: widget.border,
                            decoration: widget.decoration,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: null,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: DataTable(
                          headingRowHeight: widget.headingRowHeight,
                          columnSpacing:widget.columnSpacing,
                          dataTextStyle:widget.dataTextStyle,
                          headingRowColor:widget.headingRowColor,
                          columns: widget.columns,
                          rows: widget.rows,
                          border: widget.border,
                          decoration:widget.decoration,
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//   List<DataColumn> _buildColumns2() {
//     return [
//       DataColumn(
//         label: Container(
//           width: 120.w,
//           padding: EdgeInsets.zero,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 'WorkFlows',
//                 style: TextStyle(
//                   fontSize: 18.sp,
//                   fontWeight: FontWeight.bold,
//                   color: const Color.fromARGB(255, 9, 11, 61),
//                 ),
//               ),
//               Icon(
//                 Icons.keyboard_arrow_down,
//                 size: 25.sp,
//               )
//             ],
//           ),
//         ),
//       ),
//       DataColumn(
//         label: SizedBox(
//           width: 120.w,
//           child: Row(
//             children: [
//               Container(
//                 height: double.infinity,
//                 width: 0.5,
//                 color: Colors.grey,
//               ),
//               SizedBox(
//                 width: 15.w,
//               ),
//               Text(
//                 'Status',
//                 style: TextStyle(
//                   fontSize: 18.sp,
//                   fontWeight: FontWeight.bold,
//                   color: const Color.fromARGB(255, 9, 11, 61),
//                 ),
//               ),
//               Icon(
//                 Icons.keyboard_arrow_down,
//                 size: 25.sp,
//               )
//             ],
//           ),
//         ),
//       ),
//       DataColumn(
//         label: SizedBox(
//           width: 300.w,
//           child: Row(
//             children: [
//               Text(
//                 'Invited By',
//                 style: TextStyle(
//                   fontSize: 18.sp,
//                   fontWeight: FontWeight.bold,
//                   color: const Color.fromARGB(255, 9, 11, 61),
//                 ),
//               ),
//               Icon(
//                 Icons.keyboard_arrow_down,
//                 size: 25.sp,
//               )
//             ],
//           ),
//         ),
//       ),
//       DataColumn(
//         label: SizedBox(
//           width: 120.w,
//           child: Row(
//             children: [
//               Text(
//                 'Start Date',
//                 style: TextStyle(
//                   fontSize: 18.sp,
//                   fontWeight: FontWeight.bold,
//                   color: const Color.fromARGB(255, 9, 11, 61),
//                 ),
//               ),
//               Icon(
//                 Icons.keyboard_arrow_down,
//                 size: 25.sp,
//               )
//             ],
//           ),
//         ),
//       ),
//       DataColumn(
//         label: SizedBox(
//           width: 110.w,
//           child: Row(
//             children: [
//               Text(
//                 'End Date',
//                 style: TextStyle(
//                   fontSize: 18.sp,
//                   fontWeight: FontWeight.bold,
//                   color: const Color.fromARGB(255, 9, 11, 61),
//                 ),
//               ),
//               Icon(
//                 Icons.keyboard_arrow_down,
//                 size: 25.sp,
//               )
//             ],
//           ),
//         ),
//       ),
//       DataColumn(
//         label: SizedBox(
//           width: 100.w,
//           child: Row(
//             children: [
//               Text(
//                 'Actions',
//                 style: TextStyle(
//                   fontSize: 18.sp,
//                   fontWeight: FontWeight.bold,
//                   color: const Color.fromARGB(255, 9, 11, 61),
//                 ),
//               ),
//               Icon(
//                 Icons.keyboard_arrow_down,
//                 size: 25.sp,
//               )
//             ],
//           ),
//         ),
//       ),
//     ];
//   }

//   List<DataRow> _buildRows() {
//     return List.generate(
//       100,
//       (index) => DataRow(
//         cells: [
//           DataCell(SizedBox(
//             width: 120.w,
//             child: Text(
//               '12/10 DWW',
//               style: TextStyle(fontSize: 18.sp),
//             ),
//           )),
//           DataCell(SizedBox(
//             width: 120.w,
//             child: Row(
//               children: [
//                 Container(
//                   height: double.infinity,
//                   width: 0.5.w,
//                   color: Colors.grey,
//                 ),
//                 SizedBox(
//                   width: 15.w,
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                       color: Color.fromARGB(255, 217, 231, 225),
//                       borderRadius: BorderRadius.all(Radius.circular(8))),
//                   child: Padding(
//                     padding:
//                         EdgeInsets.symmetric(horizontal: 13.w, vertical: 5.h),
//                     child: Text(
//                       'Completed',
//                       style: TextStyle(
//                           fontSize: 15.sp,
//                           color: const Color.fromARGB(255, 7, 66, 9)),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )),
//           DataCell(SizedBox(
//             width: 300.w,
//             child: Text(
//               'surajbabanbombale59@gmail.com',
//               style: TextStyle(fontSize: 18.sp),
//             ),
//           )),
//           DataCell(SizedBox(
//             width: 120.w,
//             child: Text(
//               '12/10/2003',
//               style: TextStyle(fontSize: 18.sp),
//             ),
//           )),
//           DataCell(SizedBox(
//             width: 110.w,
//             child: Text(
//               '12/11/2023',
//               style: TextStyle(fontSize: 18.sp),
//             ),
//           )),
//           DataCell(SizedBox(
//             width: 100.w,
//             child: Text(
//               'view',
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(
//                   fontSize: 18.sp,
//                   color: const Color.fromARGB(255, 33, 54, 243)),
//             ),
//           )),
//         ],
//       ),
//     );
//   }
// }
