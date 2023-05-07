import 'package:flutter/material.dart';
import 'package:booktickets/utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Row(
      children: [
        /** airline tickets */
        Container(
          width: size.width * .44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(AppLayout.getHeight(50))),
            color: Colors.white,
          ),
          child: Center(child: Text(firstTab)),
          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
        ),
        /** Hotels */
        Container(
          width: size.width * .44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(
                right: Radius.circular(AppLayout.getHeight(50))),
            color: Colors.transparent,
          ),
          child: Center(child: Text(secondTab)),
          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
        ),
      ],
    );
  }
}