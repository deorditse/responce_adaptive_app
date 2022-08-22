import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../products/peoples.dart';

Container popupContainer(BuildContext context, int index) => Container(
      padding: EdgeInsetsDirectional.all(20),
      color: CupertinoColors.white,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).copyWith().size.height * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      child: FittedBox(
                        child: CircleAvatar(
                          child: Image.asset(peoples[index].avatar),
                        ),
                      ),
                      flex: 1,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: Material(
                        child: Text(
                          'View Profile ${peoples[index].title}',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 60,
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                        child: FittedBox(
                          child: Icon(
                            Icons.people,
                          ),
                        ),
                        flex: 1,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 5,
                        child: Material(
                          child: Text(
                            'Friends',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 60,
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: FittedBox(
                          child: Icon(
                            Icons.repeat_on_sharp,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 5,
                        child: Material(
                          child: Text(
                            'Report',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
