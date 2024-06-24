import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location Selector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LocationSelectionScreen(),
    );
  }
}

class LocationSelectionScreen extends StatefulWidget {
  @override
  _LocationSelectionScreenState createState() =>
      _LocationSelectionScreenState();
}

class _LocationSelectionScreenState extends State<LocationSelectionScreen> {
  String _selectedOption = 'current_location'; // 기본값 설정

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Location'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile<String>(
              title: Text('현재 위치 사용'),
              value: 'current_location',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('위치 수동 입력'),
              value: 'manual_input',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                if (_selectedOption == 'current_location') {
                  // 현재 위치 사용
                  print('현재 위치 사용 선택됨');
                  // 여기에 현재 위치 사용 로직 추가
                } else if (_selectedOption == 'manual_input') {
                  // 위치 수동 입력
                  print('위치 수동 입력 선택됨');
                  // 여기에 위치 수동 입력 로직 추가
                }
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black, // 글씨 색깔
                backgroundColor: Colors.white, // 버튼 배경 색깔
              ),
              child: Text('선택 완료'),
            ),
          ],
        ),
      ),
    );
  }
}
