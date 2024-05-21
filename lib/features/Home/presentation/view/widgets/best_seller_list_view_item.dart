import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(16)),
              child: Image.asset(Assets.logo),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('the jungle book'),
              Text('rudyard kipling'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(r'19.99 $'),
                  // SizedBox(
                  //   width: 40,
                  // ),
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Text('4.8[2390]'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
