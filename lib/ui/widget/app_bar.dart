import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {

  const Appbar({Key key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
            bottom: false,
            child: Column(children: <Widget>[
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[100]),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.mic,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () =>{})),
                              style: TextStyle(
                                  color: Colors.black87.withOpacity(0.6)),
                            ),
                          ),
                        )),
                    Expanded(
                      flex: 0,
                      child: Icon(
                        Icons.more_vert_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ])),
      );
  }
}
