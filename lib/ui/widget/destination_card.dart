import 'package:airplane/models/destination_model.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../pages/detail_page.dart';

class DestinationCard extends StatelessWidget {
  final DestinationModel destination;
  const DestinationCard(
    this.destination, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(destination),
          ),
        );
      },
      child: Container(
        width: 200,
        height: 323,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(
          left: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 220,
              width: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    destination.imageUrl,
                  ),
                ),
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 30,
                  width: 55,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        defaultRadius,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_star.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        destination.rating.toString(),
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination.name,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    destination.city,
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
