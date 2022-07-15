import 'package:flutter/material.dart';

void main() {
  Scaffold(
    appBar: AppBar(
      actions: [
        IconButton(
          onPressed: () {
            // what to do here
          },
          icon: Icon(Icons.done),
        )
      ],
    ),
    body: Column(
      children: [
        Options(),
      ],
    ),
  );
}
