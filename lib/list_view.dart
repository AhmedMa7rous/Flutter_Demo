import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Cars',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => BuildListItems(),
        separatorBuilder: (context, index) => const SizedBox(height: 0,),
        itemCount: 10,
      ),
    );
  }

  Widget BuildListItems() => Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.1)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Expanded(
                  child: Row(
                    children: [
                      Text(
                        'Booking Number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10
                        ),
                      ),
                      Text(
                        ' 9839404',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                        ),
                      ),
                    ],
                  )
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                onPressed: onPressAddReview,
                icon: Icon(
                  Icons.messenger,
                  size: 15,
                ),
                label: const Text(
                  'ADD REVIEW',
                  textDirection: TextDirection.rtl,
                ),)
            ],
          ),
          const Row(
            children: [
              Image(
                image: NetworkImage('https://graficsea.com/wp-content/uploads/2022/07/Black-Toyota-Corolla-Car-.png'),
                width: 100,
                height: 60,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Standard',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                    Text(
                      'Nissan, Toyota, or Similar',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 0.1,
                ),
                bottom: BorderSide(
                  width: 0.1,
                ),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 100,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ride Type',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey
                        ),
                      ),
                      Text(
                        'City Ride Limo',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.black
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Service',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey
                        ),
                      ),
                      Text(
                        'Half Day - 4 Hours Ride',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.black
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: const Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pickup',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.black
                        ),
                      ),
                      Text(
                        '22 Vueta Plaza - El Tagomma El Khames',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '4Hrs Ride Price',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '4500',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green
                          ),
                        ),
                        Text(
                          ' EGP',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.green
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

  void onPressAddReview() {

    print('Add Review Tapped!');
  }

}