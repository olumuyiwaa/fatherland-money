import 'package:flutter/material.dart';
import '../utilities/mini_profile_pic.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Details'),
        centerTitle: false,
        actions: [           const MiniProfilePic(),

          const SizedBox(
            width: 24,
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Container(
                      padding: const EdgeInsets.all(32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.green),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 120,
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Paid on:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('DD MM YYYY, XX:XX, GMT+1'),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sender:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Oladoyin Emmanuel'),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payee:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Oladoyin Emmanuel O.'),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payee Bank:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Bank Name'),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transation ID:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('0123456789825161234'),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reference:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('XXXXXXXXXXXXXXXXXX'),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment Type:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('XXXXXXXXXXXXXXXXXX'),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Amount:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('\$ 10000'),
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Container(
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(224, 38, 50, 56),
                        width: 1,
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Share Receipt',
                        style: TextStyle(
                          color: Color.fromARGB(224, 38, 50, 56),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
