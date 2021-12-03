import 'package:flutter/material.dart';
import 'package:ecommerce/pages/checkout.dart';
import 'package:ecommerce/styles.dart';
import 'package:ecommerce/widgets/itemdetails.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> menu_items = ['Hand bag', 'Jewellery', 'Footwear', 'Dresses'];
  int selected_menu = 0;
  // PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          Icon(Icons.search, color: Color(0xFFCDCDCD), size: 35),
          SizedBox(width: 15),
          Icon(
            Icons.shopping_cart_outlined,
            color: Color(0xFFCDCDCD),
            size: 35,
          ),
        ],
        leading: const Icon(
          Icons.arrow_back_outlined,
          size: 35,
          color: Color(0xFFCDCDCD),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, top: 15.0, bottom: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Women',
                    style: GoogleFonts.fjallaOne(
                        color: Colors.black, fontSize: 24),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                    menu_items.length,
                    (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selected_menu = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 12),
                                  child: Text(
                                    menu_items[index],
                                    style: GoogleFonts.poppins(
                                        color: selected_menu == index
                                            ? Color(0xff080404)
                                            : Color(0xFFCDCDCD),
                                        fontSize: 16,
                                        fontWeight: selected_menu == index
                                            ? FontWeight.bold
                                            : FontWeight.normal),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                selected_menu == index
                                    ? Container(
                                        width: 50,
                                        height: 2,
                                        color: Colors.black,
                                      )
                                    : Center(),
                              ],
                            ),
                          ),
                        )),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
              child: Expanded(
                flex: 5,
                child: GridView.count(
                  shrinkWrap: true,
                  childAspectRatio: 0.76,
                  physics: const ScrollPhysics(
                      parent: NeverScrollableScrollPhysics()),
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 8.0,
                  children: List.generate(
                    productInfo.length,
                    (index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => CheckOutPage(
                                      index: index,
                                    )));
                      },
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 170,
                                decoration: BoxDecoration(
                                  color: productInfo[index].color,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    productInfo[index].img,
                                    fit: BoxFit.contain,
                                  ),
                                )),
                            Text(
                              productInfo[index].name,
                              style: nameStyle,
                            ),
                            Text(
                              '\$${productInfo[index].price}',
                              style: priceStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
