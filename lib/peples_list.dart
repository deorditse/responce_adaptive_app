import 'package:flutter/material.dart';
import 'package:task_4_layout_people/products/peoples.dart';

class PeopleList extends StatelessWidget {
  final int currentPeople;
  final void Function(int) onTapPeople;

  const PeopleList({
    required this.currentPeople,
    required this.onTapPeople,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: peoples.length,
      itemBuilder: (context, index) {
        final people = peoples[index];
        return Container(
          color: index == currentPeople ? Colors.greenAccent : Colors.cyan,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(people.avatar),
            ),
            title: Text(people.title),
            subtitle: Text(people.subtitle),
            onTap: () {
              onTapPeople(index); //1111 - index продукта
            },
          ),
        );
      },
    );
  }
}
