
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class UlScreen3 extends StatefulWidget {
  const UlScreen3({Key? key}) : super(key: key);

  @override
  State<UlScreen3> createState() => _UlScreen3State();
}

class _UlScreen3State extends State<UlScreen3> {
  @override
  Widget build(BuildContext context) {
     final List<String> _options = ['On Hold', 'Payouts(15)', 'Refunds'];
     String _selectedOption = '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: const [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 169, 168, 168),
                    width: .2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Transaction Limit',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'A free limit up to which you will receive the online payments directly in your bank',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: 320,
                            height: 30,
                            child: LinearPercentIndicator(
                              percent: 0.22,
                              backgroundColor: Color.fromARGB(255, 179, 177, 177),
                              progressColor: Colors.blue[700],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        '36,668 left out of ₹50,000',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Increase limit',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                children: [
                  Text(
                    'Default Method',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),

                  Spacer(),
                  Text(
                    'Online Payment',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),

                  Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                children: [
                  Text(
                    'Payment Profile',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),

                  Spacer(),
                  Text(
                    'Bank Account',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),

                  Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                ],
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                children: [
                  Text(
                    'Payment Overview',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Spacer(),
                  Text(
                    'Lifetime',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),

                  Icon(Icons.keyboard_arrow_down, color: Colors.grey,)
                ],
              ),
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 170,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AMOUNT ON HOLD',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '₹0',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green[500],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 170,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AMOUNT RECEIVED',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '₹13,332',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transactions',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _options.map((option) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChoiceChip(
                      label: _selectedOption == option
                          ? Text(
                              option,
                              style: const TextStyle(color: Colors.white),
                            )
                          : Text(
                              option,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 110, 108, 108)),
                            ),
                      selected: _selectedOption == option,
                      backgroundColor:
                          _selectedOption == option ? Colors.blue : null,
                      onSelected: (bool selected) {
                        setState(() {
                          _selectedOption = selected ? option : '';
                        });
                      },
                      selectedColor: Colors.blue,
                      labelStyle: _selectedOption == option
                          ? const TextStyle(color: Colors.white)
                          : const TextStyle(
                              color: Color.fromARGB(255, 197, 196, 196)),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
              Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  list1(
                    imageAddress: 'asset/images/no1.jpg',
                    orderNumber: 'Order #1688068',
                    time: 'Jul 12, 02:06 PM',
                    amount: '₹799',
                  ),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'asset/images/istockphoto-95574723-1024x1024.jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹397.4'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'asset/images/fold-t-shirt-isolated_1339-135794.jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹686.42'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'asset/images/no2.jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹1123.5'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'asset/images/no4.jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹1722.5'),
                  const Divider(thickness: 2),
                  list1(
                    imageAddress:
                        'asset/images/no5.jpg',
                    orderNumber: 'Order #1688068',
                    time: 'Jul 12, 02:06 PM',
                    amount: '₹799',
                  ),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'asset/images/Tottenham 23-24 Third Kit (5).jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹397.4'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'asset/images/download-7.webp',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹686.42'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'asset/images/41p3Bc6d8zL._AC_UY1100_.jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹1123.5'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'asset/images/81I23vw-8bL._AC_UY1100_.jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹1722.5'),
                  const Divider(thickness: 2),
                  list1(
                    imageAddress: 'asset/images/ad35ad488253438ca147aed1010d5e3b_9366.webp',
                    orderNumber: 'Order #1688068',
                    time: 'Jul 12, 02:06 PM',
                    amount: '₹799',
                  ),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress:
                          'asset/images/download.jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹397.4'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress:
                          'asset/images/images.jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹686.42'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'asset/images/brazil-2022-home-away-kits-13.jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹1722.5'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  list1(
      {required String imageAddress,
      required String orderNumber,
      required String time,
      required String amount}) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(width: .8, color: Colors.black)),
                  child: Image.asset(imageAddress)
                  // Image(
                  //   image: AssetImage(imageAddress),
                  //   fit: BoxFit.cover,
                  // ),
                  ),
              const SizedBox(width: 20),
              Column(
                children: [Text(orderNumber), Text(time)],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    amount,
                    style: const TextStyle(color: Colors.blue),
                  ),
                 const Row(
                    children:  [
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                      SizedBox(width: 5),
                      Text('Successfull')
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '$amount deposited to 586459632',
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
