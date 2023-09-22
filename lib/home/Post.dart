class Post{
  final String profileImageUrl;
  final String username;
  final String time;
  final String content;
  final String? likes;
  final String? comments;
  final String ?shares;

  Post({
    required this.profileImageUrl,
    required this.username,
   required this.time,
    required this.content,
     this.likes,
    this.comments,
    this.shares
  });
}

List<Post> posts = [
  Post(profileImageUrl: 'assets/LQLQ.jpg', username: 'Hajar Ihab', time: '8h', content: 'Happy Birthday', likes: '63', comments: '11', shares: '2'),
  Post(profileImageUrl: 'assets/LQLQ1.jpg', username: 'Marah Abu-Mous', time: '13h', content: 'Happy new year 🎉🎉', likes: '10', comments: '3', shares: '2'),
   Post(profileImageUrl: 'assets/LQLQ2.jpg', username: 'Sara Abu-Farha', time: '1w', content:  'Congratulations', likes: '233', comments: '6', shares: '4'),
   Post(profileImageUrl: 'assets/LQLQ3.jpg', username: 'Dalal zakarneh', time: '1w', content: 'Good afternoon people, hope you are doing well. STAY HOME STAY SAFE. Hope you are healthy and happy. Wish you good health guys :)', likes: '233', comments: '6', shares: '4'),
];










// ======================== way2 hard for reaction ========================
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
//
// final roundGrey = BoxDecoration(
//   color: Colors.grey[308],
//   borderRadius: BorderRadius.circular(100),
// );
//
// const likeButtonTextStyle = TextStyle(
//   color: Colors.blueAccent,
//   fontWeight: FontWeight.bold,
//   fontSize: 16,
// );
//
// class Emoji {
//   final String path;
//   final double scale;
//
//   Emoji(
//     this.path,
//     this.scale,
//   );
// }
//
// final List<Emoji> emojis = [
//   Emoji('images/like.gif', 0.85),
//   Emoji('images/love.gif', 0.85),
//   Emoji('images/haha.gif', 0.85),
//   Emoji('images/wow.gif', 0.85),
//   Emoji('images/sad.gif', 0.85),
//   Emoji('images/angry.gif', 0.85)
// ];
//
// class wlike extends StatefulWidget {
//   const wlike({super.key});
//
//   @override
//   State<wlike> createState() => _wlikeState();
// }
//
// class _wlikeState extends State<wlike> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       Container(
//         margin: const EdgeInsets.symmetric(horizontal: 20),
//         decoration: roundGrey,
//         child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
// TextButton(onPressed:(){ setState(() {for (int i = 0; i < emojis.length; i++)
//     Image.asset(emojis[i].path,
//     height: 50, fit: BoxFit.cover);});
//
//
// }, child: Text('child'))
//
//
//
//
//         ]),
//       ),
//       Container(
//         margin: const EdgeInsets.symmetric(vertical: 20),
//         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//         decoration: roundGrey,
//         child: const Text('Like', style: likeButtonTextStyle),
//       ),
//     ]);
//   }
// }
//
// class Post {
//   final String profileImageUrl;
//   final String username;
//   final String time;
//   final String content;
//   final String like_num;
//   final wlike like;
//   final String? comments;
//   final String? shares;
//
//   Post(this.like,
//       {required this.profileImageUrl,
//       required this.username,
//       required this.time,
//       required this.content,
//
//       required this.like_num,
//       this.comments,
//       this.shares});
// }
//
// List<Post> posts = [
//   new Post(new wlike(),
//       profileImageUrl: 'assets/LQLQ.jpg',
//       username: 'Hajar Ihab',
//       time: '8h',
//       content: 'Happy Birthday',
//       like_num: '63',
//       comments: '11',
//       shares: '2'),
//   new Post(new wlike(),
//       profileImageUrl: 'assets/LQLQ1.jpg',
//       username: 'Marah Abu-Mous',
//       time: '13h',
//       content: 'Happy new year 🎉🎉',
//       like_num: '10',
//       comments: '3',
//       shares: '2'),
//   new Post(new wlike(),
//       profileImageUrl: 'assets/LQLQ2.jpg',
//       username: 'Sara Abu-Farha',
//       time: '1w',
//       content: 'Congratulations',
//       like_num: '233',
//       comments: '6',
//       shares: '4'),
//   new Post(new wlike(),
//       profileImageUrl: 'assets/LQLQ3.jpg',
//       username: 'Dalal zakarneh',
//       time: '1w',
//       content:
//           'Good afternoon people, hope you are doing well. STAY HOME STAY SAFE. Hope you are healthy and happy. Wish you good health guys :)',
//       like_num: '233',
//       comments: '6',
//       shares: '4'),
// ];
