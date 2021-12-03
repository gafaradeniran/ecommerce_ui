import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce/styles.dart';
import 'package:ecommerce/widgets/containers.dart';
import 'package:ecommerce/widgets/itemdetails.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Color(0xFFCDCDCD), size: 35),
          ),
          const SizedBox(width: 15),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 35,
              color: Color(0xFFCDCDCD),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            size: 35,
            color: Color(0xFFCDCDCD),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(color: Colors.blue),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 8.0),
                      child: Container(
                        height: 230,
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productInfo[widget.index].description,
                              style: nameStyle,
                            ),
                            Text(
                              productInfo[widget.index].name,
                              style: name2Style,
                            ),
                            const SizedBox(height: 80),
                            Text('Price', style: nameStyle),
                            Text('\$${productInfo[widget.index].price}',
                                style: name2Style),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 80),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Color', style: name3Style),
                                    containers(),
                                    const SizedBox(width: 200),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Size', style: name3Style),
                                    Text(
                                      productInfo[widget.index].size,
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF030303),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 50),
                            Text(productInfo[widget.index].about),
                            const SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            quantity == 1 ? 1 : quantity -= 1;
                                          });
                                        },
                                        child: smallContainer(' — '),
                                      ),
                                      Text(
                                        '0$quantity',
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              quantity == '1'
                                                  ? 1
                                                  : quantity += 1;
                                            });
                                          },
                                          child: smallContainer(' + ')),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red.shade200,
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 50,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(15),
                                      border: const Border(
                                        bottom: BorderSide(
                                            width: 2, color: Colors.grey),
                                        top: BorderSide(
                                            width: 2, color: Colors.grey),
                                        right: BorderSide(
                                            width: 2, color: Colors.grey),
                                        left: BorderSide(
                                            width: 2, color: Colors.grey),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.shopping_cart_sharp,
                                        color: Colors.grey,
                                        size: 36,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  flex: 4,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 50,
                                    minWidth: double.infinity,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    color: Colors.blue,
                                    child: Text(
                                      'BUY NOW',
                                      style: name2Style,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 60),
                Image.asset(
                  productInfo[widget.index].img,
                  height: 250,
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
