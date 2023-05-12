import 'package:flutter/material.dart';

enum PopupMenuPages { container }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
              onSelected: (PopupMenuPages valueSelected) {
            switch (valueSelected) {
              case PopupMenuPages.container:
                Navigator.of(context).pushNamed('/container');
                break;
            }
          }, itemBuilder: (BuildContext context) {
            return <PopupMenuItem<PopupMenuPages>>[
              PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.container,
                child: Text('Container'),
              )
            ];
          }),
        ],
      ),
      body: Container(),
    );
  }
}
