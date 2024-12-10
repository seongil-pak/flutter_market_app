import 'package:flutter/material.dart';
import 'package:flutter_market_app/core/snackbar_util.dart';

class HomeTabAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('대연동'),
      actions: [
        GestureDetector(
          onTap: () {
            SnackbarUtil.showSnackBar(context, '서비스 준비중');
          },
          child: Container(
            width: 50,
            height: 50,
            color: Colors.transparent,
            child: Icon(
              Icons.search,
            ),
          ),
        )
      ],
    );
  }
}
