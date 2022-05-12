import 'package:airplane/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../shared/theme.dart';
import 'booking_details_item.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      //NOTE: DESTINATION TILE
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: 16,
                ),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      transaction.destination.imageUrl,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.destination.name,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      transaction.destination.city,
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_star.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    transaction.destination.rating.toString(),
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ],
          ),
          //NOTE: BOOKING DETAILS TEXT
          Container(
            margin: EdgeInsets.only(
              top: 20,
              bottom: 10,
            ),
            child: Text(
              'Booking Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
          //NOTE: BOOKING DETAILS ITEM
          bookingDetailsItem(
            title: 'Traveler',
            valueColor: kBlackColor,
            valueText: '${transaction.amountOfTraveler} person',
          ),
          bookingDetailsItem(
            title: 'seat',
            valueColor: kBlackColor,
            valueText: transaction.seat,
          ),
          bookingDetailsItem(
            title: 'Insurance',
            valueColor: transaction.insurance ? kGreenColor : kRedColor,
            valueText: transaction.insurance ? 'YES' : 'NO',
          ),
          bookingDetailsItem(
            title: 'Refundable',
            valueColor: transaction.refundable ? kGreenColor : kRedColor,
            valueText: transaction.refundable ? 'YES' : 'NO',
          ),
          bookingDetailsItem(
            title: 'VAT',
            valueColor: kBlackColor,
            valueText: '${(transaction.vat * 100).toStringAsFixed(0)}%',
          ),
          bookingDetailsItem(
            title: 'Price',
            valueColor: kBlackColor,
            valueText: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(transaction.price),
          ),
          bookingDetailsItem(
            title: 'Grand Total',
            valueColor: kPrimaryColor,
            valueText: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(transaction.grandTotal),
          ),
        ],
      ),
    );
  }
}
