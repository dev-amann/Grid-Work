import 'package:flutter/material.dart';
import 'package:grid_work/utils/dimension.dart';

class BackView extends StatelessWidget {
  final Widget screenLayout;

  const BackView({Key? key, required this.screenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Dimens.paddingSizeDefault,
          vertical: Dimens.paddingSizeSmall),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: screenLayout,
    );
  }
}
