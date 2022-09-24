import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  var _input = '';

  Widget _buildIndicator(bool on){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 16.0,
        height: 16.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: Color(0xFF00FDBA),
                width: 1.0),
            color: on ? Color(0xFF00FDBA) : Colors.transparent
        ),
      ),
    );
  }

  Widget _buildnumberButton(int num){
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: InkWell(
          onTap: (){
            setState(() {
              _input = _input + num.toString();
            });

          },
          child: Container(
            width: 40.0,
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: Color(0xFF4B4D4D),
                  width: 1.0),
            ),
            child: Text(num.toString(),
              style: TextStyle(fontSize: 20.0,
                  fontWeight: FontWeight.bold),),
          ),
        )

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GUESS THE NUMBER')),
      body: Column(
        children: [
          SizedBox(height: 25.0),
          Image.asset('assets/images/logo_guessnumber.png',width: 120.0,),
          SizedBox(height: 20.0),

          /*Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIndicator(_input.length>=1 ? true : false),
              _buildIndicator(_input.length>=2 ? true : false),
              _buildIndicator(_input.length>=3 ? true : false),
              _buildIndicator(_input.length>=4 ? true : false),
              _buildIndicator(_input.length>=5 ? true : false),
              _buildIndicator(_input.length>=6 ? true : false),
            ],
          ),*/
          SizedBox(height: 40.0),
          Text(_input),
          SizedBox(height: 20.0),
          Text('ทายเลข 1 ถึง 100'),
          SizedBox(height: 30.0),
          Column(
            children: [
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildnumberButton(1),
                  _buildnumberButton(2),
                  _buildnumberButton(3),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildnumberButton(4),
                  _buildnumberButton(5),
                  _buildnumberButton(6),
                ],
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildnumberButton(7),
                  _buildnumberButton(8),
                  _buildnumberButton(9),
                ],
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildnumberButton(0),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}
