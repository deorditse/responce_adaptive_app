import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_4_layout_people/layout/popup_container.dart';

import '../peples_list.dart';
import '../products/peoples.dart';

class NarrowLayout extends StatelessWidget {
  final int currentPeople;
  final void Function(int) onTapPeople; //принимает некую функыию

  const NarrowLayout({
    required this.currentPeople,
    required this.onTapPeople,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        middle: Text(
          'Adaptive Widget',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      child: ListView.builder(
        itemCount: peoples.length,
        itemBuilder: (context, index) {
          final people = peoples[index];
          return Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Card(
              elevation: 4,
              color: index == currentPeople
                  ? Colors.blue
                  : Theme.of(context).primaryColor,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(people.avatar),
                ),
                title: Text(people.title),
                subtitle: Text(people.subtitle),
                onTap: () {
                  onTapPeople(index);
                  showPopup(context, index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

void showPopup(BuildContext context, int index) {
  showCupertinoModalPopup(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 20),
        child: CupertinoPopupSurface(
          child: popupContainer(context, index),
          isSurfacePainted: true,
        ),
      );
    },
  );
}
