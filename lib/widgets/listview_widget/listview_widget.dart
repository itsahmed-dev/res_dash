import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List posts = [
      'Post 1',
      'Post 2',
      'Post 3',
      'Post 4',
      'Post 5',
    ];
    List stories = [
      'Stories 1',
      'Stories 2',
      'Stories 3',
      'Stories 4',
      'Stories 5',
    ];
    return Scaffold(
      // body: ListView(
      //   children: [
      //     MyContainer(),
      //     MyContainer(),
      //     MyContainer(),
      //     MyContainer(),
      //     MyContainer(),
      //   ],
      // ),
      body: Column(
        children: [
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (context, index) => MyCircle(
                text: stories[index],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return MyContainer(
                  text: posts[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 300,
        color: Colors.deepPurple[300],
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ),
    );
  }
}

class MyCircle extends StatelessWidget {
  const MyCircle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          color: Colors.deepPurple[500],
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
