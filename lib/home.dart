// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/list_provider.dart';
import 'package:provider_practice/second_page.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
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
            title: const Text("Home Page"),
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
                      itemCount: numbersProviderModel.numbers.length,
                      itemBuilder: (context, index) {
                        return Text(
                          numbersProviderModel.numbers[index].toString(),
                          style: const TextStyle(fontSize: 30),
                        );
                      }),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Second_page(),
                      ));
                    },
                    child: const Text("Go to 2nd page"))
              ],
            ),
          ))),
    );
  }
}
