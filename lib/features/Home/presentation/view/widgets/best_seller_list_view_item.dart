import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
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
          const SizedBox(
            width: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: const Column(
              children: [
                Text(
                  'Harry potte and the goblet of fire',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text('rudyard kipling'),
                Row(
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
            ),
          )
        ],
      ),
    );
  }
}
