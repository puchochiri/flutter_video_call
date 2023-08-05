import 'package:flutter/material.dart';
import 'package:flutter_video_call/screen/cam_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100]!,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
            Expanded(child: _Logo()),   // 로고
            Expanded(child: _Image()),   // 중앙 이미지
            Expanded(child: _EntryButton()),   // 화상 통화 시작 버튼
            ],
          ),
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[300]!,
          borderRadius: BorderRadius.circular(16.0), // 모서리 둥글게 만들기
          boxShadow: [  // 그림자 추가
            BoxShadow(
              color:  Colors.blue[300]!,
              blurRadius: 12.0,
              spreadRadius: 2.0,
            ),
          ],

        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min, // 주축 최소 크디
            children: [
              Icon( // 캠코더 아이콘
                Icons.videocam,
                color: Colors.white,
                size: 40.0,
             ),
              SizedBox(width: 12.0),
              Text( // 앱이름
                'LIVE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  letterSpacing: 4.0, // 글자 간 간격
                ),
                
              )

            ],

          ),
        ),
      ),
    );

  }
}

class _Image extends StatelessWidget {
  const _Image({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'asset/img/home_img.png',
      ),
    );


  }
}

class _EntryButton extends StatelessWidget {
  const _EntryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push( // 영상 통화 스크린으로 이동
                MaterialPageRoute(
                    builder: (_) => CamScreen(),
                ),
                
              );
            },
            child: Text('입장하기'),
        ),
      ],
    );
  }
}

