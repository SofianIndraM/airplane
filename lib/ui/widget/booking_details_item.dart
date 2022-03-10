import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class bookingDetailsItem extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor;
  const bookingDetailsItem({
    Key? key,
    required this.title,
    required this.valueColor,
    required this.valueText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 16,
            ),
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_check.png',
                ),
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle,
          ),
          Spacer(),
          Text(
            valueText,
            style: blackTextStyle.copyWith(
              color: valueColor,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
