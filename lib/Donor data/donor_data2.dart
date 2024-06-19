import 'package:blood_gp/Donor%20data/Confirmation.dart';
import 'package:blood_gp/core/bottons.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DonorPageTwo extends StatefulWidget {
  final String name;
  final String phoneNumber;
  final String hospitalName;
  final String address;

  DonorPageTwo({
    required this.name,
    required this.phoneNumber,
    required this.hospitalName,
    required this.address,
  });

  @override
  _DonorPageTwoState createState() => _DonorPageTwoState();
}

class _DonorPageTwoState extends State<DonorPageTwo> {
  TextEditingController _donationTime = TextEditingController();
  TextEditingController _donationReason = TextEditingController();
  String? _selectedBloodType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16),
              Row(
                children: [
                  IconButton(
                    icon: Ink(
                      decoration: ShapeDecoration(
                        color: Color(0xffF8DFE9),
                        shape: CircleBorder(),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.arrow_back,
                          color: kMainColor,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: kMainColor,
                    padding: EdgeInsets.all(0),
                    splashRadius: 10,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                height: 7,
                color: Color(0xffF1F1F1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 320,
                      height: 7,
                      color: kMainColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    ' وقت التبرع ',
                    style: TextStyle(fontFamily: 'Almaria'),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: _donationTime,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    ' تفاصيل الطلب  ',
                    style: TextStyle(fontFamily: 'Almaria'),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: _donationReason,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'اختر فصيلة الدم',
                style: TextStyle(fontSize: 18, fontFamily: 'Almaria'),
                textAlign: TextAlign.end,
              ),
              SizedBox(height: 8),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildBloodTypeButton('A+'),
                      _buildBloodTypeButton('B+'),
                      _buildBloodTypeButton('O+'),
                      _buildBloodTypeButton('AB+'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildBloodTypeButton('A-'),
                      _buildBloodTypeButton('B-'),
                      _buildBloodTypeButton('O-'),
                      _buildBloodTypeButton('AB-'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 22),
              SizedBox(
                width: 334,
                child: CustomGeneralButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DonorInformationPage(
                          name: widget.name,
                          phoneNumber: widget.phoneNumber,
                          hospitalName: widget.hospitalName,
                          address: widget.address,
                          donationTime: _donationTime.text,
                          selectedBloodType: _selectedBloodType!,
                          donationReason: _donationReason.text,
                        ),
                      ),
                    );
                  },
                  text: ' متابعة ',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBloodTypeButton(String bloodType) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedBloodType = bloodType;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor:
            _selectedBloodType == bloodType ? kMainColor : Color(0XFFF1F1F1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(
        bloodType,
        style: TextStyle(
          color: _selectedBloodType == bloodType ? Colors.white : Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
