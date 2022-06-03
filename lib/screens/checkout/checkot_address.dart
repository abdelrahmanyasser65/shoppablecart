import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shoppablecart/screens/checkout/checkout_delivery.dart';
import 'package:shoppablecart/screens/checkout/checkout_ordersummary.dart';

import '../../components/components.dart';

class CheckoutAddress extends StatefulWidget {
  const CheckoutAddress({Key? key}) : super(key: key);

  @override
  State<CheckoutAddress> createState() => _CheckoutAddressState();
}

class _CheckoutAddressState extends State<CheckoutAddress> {
  bool isCheck = false;
  var street1controller = TextEditingController();
  var street2controller = TextEditingController();
  var citycontroller = TextEditingController();
  var countrycontroller = TextEditingController();
  var statecontroller = TextEditingController();
  String? stateValue;
  String? cityValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 35, right: 16, left: 16),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                      )),
                  const SizedBox(
                    width: 112,
                  ),
                  const Text(
                    "Checkout",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              height: 552,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      buildCir1(true),
                      buildDiveder(122),
                      buildCir1(true),
                      buildDiveder(110),
                      buildCir1(false),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "Delivery",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Expanded(
                          child: Text(
                        "Address",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      )),
                      SizedBox(
                        width: 90,
                      ),
                      Expanded(
                          child: Text(
                        "Summer",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isCheck = !isCheck;
                          });
                        },
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  isCheck ? HexColor('#092547') : Colors.white,
                              border: Border.all(
                                color: HexColor('#092547'),
                              )),
                          child: isCheck
                              ? const Center(
                                  child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 20,
                                ))
                              : null,
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Text(
                        "Billing address is the same as delivery address",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  defultText(data: 'Street 1 '),
                  TextField(
                    controller: street1controller,
                    showCursor: false,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 17),
                    decoration: const InputDecoration(
                        hintText: '21, Alex Davidson Avenue',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey)),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  defultText(data: 'Street 2 '),
                  TextField(
                    controller: street2controller,
                    showCursor: false,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 17),
                    decoration: const InputDecoration(
                        hintText: 'Opposite Omegatron, Vicent Quarters',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey)),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  defultText(data: 'City '),
                  TextField(
                    controller: citycontroller,
                    showCursor: false,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 17),
                    decoration: const InputDecoration(
                        hintText: 'Victoria Island',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey)),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          defultText(data: 'State '),
                          TextField(
                            controller: statecontroller,
                            showCursor: false,
                            keyboardType: TextInputType.text,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 17),
                            decoration: const InputDecoration(
                                hintText: 'Lagos State',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey)),
                          ),
                        ],
                      )),
                      const SizedBox(
                        width: 37,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          defultText(data: 'Country '),
                          TextField(
                            controller: countrycontroller,
                            showCursor: false,
                            keyboardType: TextInputType.text,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 17),
                            decoration: const InputDecoration(
                                hintText: 'Nigeria',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey)),
                          ),
                        ],
                      ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 84,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 30, right: 30, top: 17),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                                side: BorderSide(
                                  color: HexColor('092547'),
                                ))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CheckoutDelivery()));
                        },
                        child: const SizedBox(
                          width: 146,
                          height: 50,
                          child: Center(
                            child: Text(
                              "BACK",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Expanded(
                      child: EElevatedButton(
                          text: 'NEXT',
                          prColor: '#092547',
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CheckoutOrderSummary()));
                          },
                          radius: 3,
                          width: 145,
                          height: 50))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCir1(boolin) => Container(
        height: 30,
        width: 30,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            border: Border.all(color: HexColor('#DDDDDD'), width: 1),
            shape: BoxShape.circle),
        child: boolin
            ? Container(
                width: 16,
                height: 16,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )
            : null,
      );

  Widget buildDiveder(double val) => SizedBox(
        width: val,
        child: Container(
          height: 1,
          color: HexColor('#DDDDDD'),
        ),
      );
}
