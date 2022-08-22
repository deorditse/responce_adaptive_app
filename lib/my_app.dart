import 'package:flutter/material.dart';

import 'adaptive_widget.dart';
import 'layout/narrow.dart';
import 'layout/wide.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentPeople = -1;

  late final void Function(int) _onTapPeople;

  @override
  void initState() {
    super.initState();
    //инициализируем функцию
    _onTapPeople = (index) {
      setState(() {
        _currentPeople = index;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AdaptiveWidget(
          wide: WideLayout(
            currentPeople: _currentPeople,
            onTapPeople: _onTapPeople,
          ),
          narrow: NarrowLayout(
            currentPeople: _currentPeople,
            onTapPeople: _onTapPeople,
          ),
        );
      },
    );
  }
}
