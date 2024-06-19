import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/more/confirmation.dart';
import 'package:flutter/material.dart';

class wwww extends StatefulWidget {
  const wwww({Key? key}) : super(key: key);

  @override
  _wwwwState createState() => _wwwwState();
}

class _wwwwState extends State<wwww> {
  TextEditingController _nameuser = TextEditingController();
  TextEditingController _emailuser = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kMainColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '  تواصل معنا  ',
          style: TextStyle(fontSize: 21),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'نحن نقدر تواصلك معنا ونهتم برأيك واقتراحاتك. إذا كان لديك أي استفسار أو تعليق أو استفسار تقني، فنحن هنا للمساعدة',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                height: 20,
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
                        hintText: ' محمد على ',
                        hintTextDirection: TextDirection.rtl,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a name';
                        }
                        return null;
                      },
                      controller: _nameuser,
                    ),
                  ),
                  Text(
                    ' البريد الالكترونى ',
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
                        hintText: ' momhussien99@gmail.com ',
                        hintTextDirection: TextDirection.rtl,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a email';
                        }
                        return null;
                      },
                      controller: _emailuser,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    ' الرسالة ',
                    style: TextStyle(fontSize: 22, fontFamily: 'Almaria'),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    width: 365,
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      minLines: 7,
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: ' رسالتك ',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 365,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => conf()),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(kMainColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      ' ارسال ',
                      style: TextStyle(fontSize: 16, fontFamily: 'Almaria'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
