import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// every StatelessWidget should be inherited from this
abstract class BaseStatelessWidget extends StatelessWidget {
  const BaseStatelessWidget({Key key}) : super(key: key);

  Widget getLayout(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return getLayout(context);
  }
}
