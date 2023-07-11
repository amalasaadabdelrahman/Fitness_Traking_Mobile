import 'package:activity/component/text_style.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';

class BuildStatistics extends StatefulWidget {
  const BuildStatistics({Key? key}) : super(key: key);

  @override
  State<BuildStatistics> createState() => _BuildStatisticsState();
}

class _BuildStatisticsState extends State<BuildStatistics> {
  var _dropdownvalue = 'week 1';
  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropdownvalue = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Statistics',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: DropdownButton<String>(
                    iconEnabledColor: Colors.black,
                    iconDisabledColor: Colors.grey,
                    iconSize: 40,
                    items: [
                      DropdownMenuItem(
                        child: Text('week 1'),
                        value: 'week 1',
                      ),
                      DropdownMenuItem(
                        child: Text('week 2'),
                        value: 'week 2',
                      ),
                      DropdownMenuItem(
                        child: Text('week 3'),
                        value: 'week 3',
                      ),
                      DropdownMenuItem(
                        child: Text('week 4'),
                        value: 'week 4',
                      ),
                    ],
                    onChanged: dropdownCallback,
                    value: _dropdownvalue,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CustomContainer(
                    fill: 100,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    day: 'M',
                  ),
                ],
              ),
              Column(
                children: [
                  CustomContainer(
                    fill: 50,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    day: 'T',
                  ),
                ],
              ),
              Column(
                children: [
                  CustomContainer(
                    fill: 55,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    day: 'S',
                  ),
                ],
              ),
              Column(
                children: [
                  CustomContainer(
                    fill: 100,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    day: 'F',
                  ),
                ],
              ),
              Column(
                children: [
                  CustomContainer(
                    fill: 50,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    day: 'T',
                  ),
                ],
              ),
              Column(
                children: [
                  CustomContainer(
                    fill: 55,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    day: 'S',
                  ),
                ],
              ),
              Column(
                children: [
                  CustomContainer(
                    fill: 100,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    day: 'W',
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.green[300],
                    ),
                    Icon(
                      Icons.model_training,
                      color: Colors.green[700],
                      size: 30,
                    ),
                  ],
                  alignment: AlignmentDirectional.center,
                ),
                title: Text(
                  'Traning',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  '4.5 hours',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.red[300],
                    ),
                    Icon(
                      Icons.run_circle_outlined,
                      color: Colors.red[700],
                      size: 30,
                    ),
                  ],
                  alignment: AlignmentDirectional.center,
                ),
                title: Text(
                  'Steps',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  '24 km per week',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue[300],
                    ),
                    Icon(
                      Icons.kayaking,
                      color: Colors.blue[700],
                      size: 30,
                    ),
                  ],
                  alignment: AlignmentDirectional.center,
                ),
                title: Text(
                  'Calories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  '6521 calories burned',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
