// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class GoalsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GoalsScreenState();
  }
}

class GoalsScreenState extends State<GoalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Goals'),
      ),
      body: Center(
        child: Text('Hello world'),
      ),
    );
  }
}
