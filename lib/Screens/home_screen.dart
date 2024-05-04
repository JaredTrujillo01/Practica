import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int _countlikes = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_countlikes Like',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 5),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.favorite), Text('+')]),
            onPressed: () {
              setState(() {
                _countlikes++;
              });
            },
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.favorite), Text('-')]),
            onPressed: () {
              setState(() {
                _countlikes--;
              });
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
