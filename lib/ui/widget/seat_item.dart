import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  //NOTE: 0. Available 1.Selected 2.Unavailable
  final int status;
  const SeatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailable;

        case 1:
          return kPrimaryColor;

        case 2:
          return kUnavailable;

        default:
          return kUnavailable;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;

        case 1:
          return kPrimaryColor;

        case 2:
          return kUnavailable;

        default:
          return kUnavailable;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();

        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );

        case 2:
          return SizedBox();

        default:
          return SizedBox();
      }
    }

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(defaultRadius),
        border: Border.all(
          color: borderColor(),
        ),
      ),
      child: child(),
    );
  }
}
