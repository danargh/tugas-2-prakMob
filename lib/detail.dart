import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final List placeDetail;
  const Detail({Key? key, required this.placeDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(vertical: 150, horizontal: 10),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                placeDetail[0].imageUrls[0],
                width: 120,
              ),
              Image.network(
                placeDetail[0].imageUrls[1],
                width: 120,
              ),
              Image.network(
                placeDetail[0].imageUrls[2],
                width: 120,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                placeDetail[0].name,
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800, height: 1.5),
              ),
              Text(
                placeDetail[0].location,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Text(
                placeDetail[0].description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
              Text(
                '${placeDetail[0].openDays} ${placeDetail[0].openTime}',
                style: TextStyle(
                  height: 2,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              Text(
                placeDetail[0].ticketPrice,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
