import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableUiScreen extends StatelessWidget {
  const TableUiScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Row(
        children: [
          _leftDrawer(context),
          _mainScreen(),
        ],
      ),
    );
  }

  _leftDrawer(BuildContext context) {
    return Container(
      width: 350.w,
      height: MediaQuery.of(context).size.height,
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 247, 241, 241)),
    );
  }

  _mainScreen() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchingField(),
          const Divider(
            height: 1,
            color: Colors.black45,
          ),
          _headingText(),
          Expanded(
            child: Stack(children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: SizedBox(
                    width: double.infinity,
                    child: DataTable(
                      headingRowHeight: 30.w,
                      columnSpacing: 50.w,
                      dataTextStyle: const TextStyle(
                          color: Color.fromARGB(255, 9, 11, 61)),
                      headingRowColor:
                          MaterialStateProperty.all(Colors.white10),
                      columns: _buildColumns(),
                      rows: _buildRows(),
                      border: const TableBorder(borderRadius:BorderRadius.all(Radius.circular(12))),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
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
                    headingRowHeight: 40.w,
                    columnSpacing: 50.w,
                    dataTextStyle:
                        const TextStyle(color: Color.fromARGB(255, 9, 11, 61)),
                    headingRowColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 233, 235, 233)),
                    columns: _buildColumns2(), rows: [],
                    border: const TableBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))),
                    decoration: BoxDecoration(
                      // border: Border.all(
                      //   // color: Colors.grey,
                      //   width: 0.5,
                      // ),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }

  List<DataColumn> _buildColumns2() {
    return [
      DataColumn(
        label: Container(
          width: 120.w,
          padding: EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'WorkFlows',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 9, 11, 61),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 25.sp,
              )
            ],
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 120.w,
          child: Row(
            children: [
              Container(
                height: double.infinity,
                width: 0.5,
                color: Colors.grey,
              ),
              SizedBox(
                width: 15.w,
              ),
              Text(
                'Status',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 9, 11, 61),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 25.sp,
              )
            ],
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 300.w,
          child: Row(
            children: [
              Text(
                'Invited By',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 9, 11, 61),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 25.sp,
              )
            ],
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 120.w,
          child: Row(
            children: [
              Text(
                'Start Date',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 9, 11, 61),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 25.sp,
              )
            ],
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 110.w,
          child: Row(
            children: [
              Text(
                'End Date',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 9, 11, 61),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 25.sp,
              )
            ],
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 100.w,
          child: Row(
            children: [
              Text(
                'Actions',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 9, 11, 61),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 25.sp,
              )
            ],
          ),
        ),
      ),
    ];
  }

  List<DataRow> _buildRows() {
    return List.generate(
      100,
      (index) => DataRow(
        cells: [
          DataCell(SizedBox(
            width: 120.w,
            child: Text(
              '12/10 DWW',
              style: TextStyle(fontSize: 18.sp),
            ),
          )),
          DataCell(SizedBox(
            width: 120.w,
            child: Row(
              children: [
                Container(
                  height: double.infinity,
                  width: 0.5.w,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 217, 231, 225),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 13.w, vertical: 5.h),
                    child: Text(
                      'Completed',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: const Color.fromARGB(255, 7, 66, 9)),
                    ),
                  ),
                ),
              ],
            ),
          )),
          DataCell(SizedBox(
            width: 300.w,
            child: Text(
              'surajbabanbombale59@gmail.com',
              style: TextStyle(fontSize: 18.sp),
            ),
          )),
          DataCell(SizedBox(
            width: 120.w,
            child: Text(
              '12/10/2003',
              style: TextStyle(fontSize: 18.sp),
            ),
          )),
          DataCell(SizedBox(
            width: 110.w,
            child: Text(
              '12/11/2023',
              style: TextStyle(fontSize: 18.sp),
            ),
          )),
          DataCell(SizedBox(
            width: 100.w,
            child: Text(
              'view',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 18.sp,
                  color: const Color.fromARGB(255, 33, 54, 243)),
            ),
          )),
        ],
      ),
    );
  }

  _headingText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 13.h,
          ),
          Text(
            'WorkFlows',
            style: TextStyle(
              color: const Color.fromARGB(255, 9, 11, 61),
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  _searchingField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
      child: Row(
        children: [
          Icon(Icons.search,
              color: const Color.fromARGB(255, 9, 11, 61), size: 30.sp),
          SizedBox(
            width: 12.w,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "search creadintial by name",
                  hintStyle: TextStyle(fontSize: 19.sp, color: Colors.grey)),
            ),
          ),
          Icon(Icons.notifications_none,
              color: const Color.fromARGB(255, 9, 11, 61), size: 31.sp),
          SizedBox(
            width: 8.w,
          ),
          CircleAvatar(
            radius: 23.sp,
          )
        ],
      ),
    );
  }

  List<DataColumn> _buildColumns() {
    return [
      const DataColumn(
        label: Text(
          '',
        ),
      ),
      const DataColumn(
        label: Text(
          '',
        ),
      ),
      const DataColumn(
        label: Text(
          '',
        ),
      ),
      const DataColumn(
        label: Text(
          '',
        ),
      ),
      const DataColumn(
        label: Text(
          '',
        ),
      ),
      const DataColumn(
        label: Text(
          '',
        ),
      ),
    ];
  }
}
