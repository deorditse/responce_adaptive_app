import 'package:flutter/material.dart';
import 'package:task_4_layout_people/layout/popup_container.dart';
import '../products/peoples.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }

class WideLayout extends StatelessWidget {
  final int currentPeople;
  final void Function(int) onTapPeople; //принимает некую функыию

  const WideLayout({
    required this.currentPeople,
    required this.onTapPeople,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: MediaQuery.of(context).size.height,
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FittedBox(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Text(
                          'Adaptive Widget',
                          //   style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Область меню',
                          //   style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: peoples.length,
                itemBuilder: (context, index) {
                  final people = peoples[index];
                  return GestureDetector(
                    onTap: () {
                      onTapPeople(index); //тут пробрасывается колбек
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            scrollable: true,
                            content: Container(
                              width: MediaQuery.of(context).size.width / 4,
                              child: popupContainer(context, index),
                            ),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        key: UniqueKey(),
                        color: index == currentPeople
                            ? Colors.blue
                            : Theme.of(context).primaryColor,
                        margin: EdgeInsets.all(12),
                        borderOnForeground: true,
                        elevation: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: FittedBox(
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(people.avatar),
                                  ),
                                ),
                              ),
                              flex: 3,
                            ),
                            Expanded(
                              child: Text(people.title),
                              // flex: 1,
                            ),
                            Expanded(
                              child: Text(people.subtitle),
                              //   flex: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
