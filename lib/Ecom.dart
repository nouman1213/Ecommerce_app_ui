import 'package:flutter/material.dart';

class Ecom extends StatefulWidget {
  @override
  _EcomState createState() => _EcomState();
}

class _EcomState extends State<Ecom> {
  List<dynamic> Images = [
    "asset/note20.jpg",
    "asset/macbook air.jpg",
    "asset/macbook pro.jpg"
  ];
  List<dynamic> product = ["Note 20 Ultra", "Macbook Air", "Macbook Pro"];
  List<dynamic> categ = [
    "Clothes",
    "Electronics",
    "Households",
    "Appliances",
    "Others"
  ];
  List<IconData> ic = [
    Icons.delete,
    Icons.electrical_services,
    Icons.bedtime,
    Icons.sanitizer,
    Icons.next_plan
  ];
  List<dynamic> pop = [
    "Iphone 12",
    "Note 20 Ultra",
    "Macbook Air",
    "Macbook Pro",
    "Gaming PC",
    "Backlit",
    "Mercedes",
    "Mutton",
    "Roadster",
    "Royal Field",
    "Wireless",
    "Tab",
    "Samsung"
  ];
  List<dynamic> popimg = [
    "asset/iphone12.jpg",
    "asset/note20.jpg",
    "asset/macbook air.jpg",
    "asset/macbook pro.jpg",
    "asset/gamingpc.jpg",
    "asset/Backlit.jpg",
    "asset/Merc.jpg",
    "asset/Mutton.jpg",
    "asset/road.jpg",
    "asset/royal.jpg",
    "asset/Wireless.jpg",
    "asset/Tab.jpg",
    "asset/samsung.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "Ecom App UI",
          style: TextStyle(
            color: Colors.black,
          ),
        )),
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Items",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "View more",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: Images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                              blurRadius: 4,
                            )
                          ]),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.30,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(Images[index]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              ListTile(
                                title: Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 10),
                                  child: Text(
                                    "${product[index]}",
                                    style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                subtitle: Row(
                                  children: [
                                    star(14),
                                    star(14),
                                    star(14),
                                    star(14),
                                    star(14),
                                    Padding(
                                      padding: EdgeInsets.only(left: 2),
                                      child: Text(
                                        "5.0 (23 Reviews)",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
            ListTile(
              title: Text(
                "More Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              margin: EdgeInsets.all(8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: categ.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width * 0.65,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                            blurRadius: 0,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ListTile(
                          leading: Icon(
                            ic[index],
                            color: Colors.purple,
                            size: 40,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${categ[index]}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                "5 Items",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ListTile(
              title: Text(
                "Popular Items",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "View more",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                padding: EdgeInsets.all(15),
                children: List.generate(pop.length, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                          blurRadius: 4,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(popimg[index]),
                                fit: BoxFit.fill),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "${pop[index]}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              star(10),
                              star(10),
                              star(10),
                              star(10),
                              star(10),
                              Container(
                                child: Text("5.0 (23 Reviews)",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }
}

Widget star(double siz) {
  return Icon(
    Icons.star,
    color: Colors.yellow,
    size: siz,
  );
}
