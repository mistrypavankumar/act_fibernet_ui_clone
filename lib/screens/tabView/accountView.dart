import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class AccountTabView extends StatelessWidget {
  const AccountTabView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: 440,
                color: Colors.red,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "John Doe",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 10,
                      ),
                      child: Container(
                        height: 225,
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: [
                            AccountData(
                              title: "Mobile",
                              data: "8888888888",
                            ),
                            AccountData(
                              title: "Email",
                              data: "youremail123@gmail.com",
                            ),
                            AccountData(
                              title: "Date of birth",
                              data: "DD-MM-YYYY",
                            ),
                            AccountData(
                              title: "Address",
                              data:
                                  "H No 3-1-203, chandrapuri colony,l.b. Nagar",
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
