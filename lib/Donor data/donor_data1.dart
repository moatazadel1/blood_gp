import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:blood_gp/Donor%20data/donor_data2.dart';
import 'package:blood_gp/core/bottons.dart';
import 'package:blood_gp/core/constants.dart';

class DonorPage extends StatefulWidget {
  const DonorPage({Key? key}) : super(key: key);

  @override
  _DonorPageState createState() => _DonorPageState();
}

class _DonorPageState extends State<DonorPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _hospitalName = TextEditingController();

  @override
  final transparentTextStyle = TextStyle(color: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 70,
            left: 25,
            right: 25,
            child: Container(
              height: 7,
              color: Color(0xffF1F1F1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 7,
                    color: kMainColor,
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'بيانات الحالة',
                    style: TextStyle(
                      color: Color(0xff121212),
                      fontFamily: 'Almarai',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'الاسم',
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a name';
                            }
                            return null;
                          },
                          controller: _name,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'رقم الهاتف',
                        style: TextStyle(fontFamily: 'Almaria'),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a phone number';
                            }
                            return null;
                          },
                          controller: _phoneNumber,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'العنوان',
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
                          controller: _address,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'اسم المستشفى',
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
                          controller: _hospitalName,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  CustomGeneralButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DonorPageTwo(
                            name: _name.text,
                            phoneNumber: _phoneNumber.text,
                            hospitalName: _hospitalName.text,
                            address: _address.text,
                          ),
                        ),
                      );
                    },
                    text: 'متابعة',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
