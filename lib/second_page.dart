// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/list_provider.dart';

class Second_page extends StatefulWidget {
  const Second_page({super.key});

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: ((context, numbersProviderModel, child) => Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              numbersProviderModel.add();
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            title: const Text("Second Page"),
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  numbersProviderModel.numbers.last.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: numbersProviderModel.numbers.length,
                      itemBuilder: (context, index) {
                        return Text(
                          numbersProviderModel.numbers[index].toString(),
                          style: const TextStyle(fontSize: 30),
                        );
                      }),
                ),
              ],
            ),
          ))),
    );
  }
}
