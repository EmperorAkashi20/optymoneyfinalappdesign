import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class ReadMoreButton extends StatelessWidget {
  const ReadMoreButton({
    Key key,
    this.press,
  }) : super(key: key);
  final Function press;

  @override                                       //Pop Up Dialog Box
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(140),
      height: getProportionateScreenHeight(30),
      child: OutlineButton(
          child: Text("Read More >>",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.white70,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  elevation: 16,
                  child: Container(
                    height: getProportionateScreenHeight(700),
                    width: getProportionateScreenWidth(360),
                    child: ListView(
                      children: <Widget>[
                        SizedBox(height: 20),
                        Center(
                          child: Text("TITLE GOES HERE",
                            style: TextStyle(fontSize: 24, color: kPrimaryColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Container(
                            child: Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of "
                                "classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a "
                                "Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, "
                                "consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, "
                                "discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32."),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
      ),
    );
  }
}
