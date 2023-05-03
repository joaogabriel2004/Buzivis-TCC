import 'package:buzivis_app/pages/principal_page.dart';
import 'package:buzivis_app/utils/style.dart';
import 'package:flutter/material.dart';

class Favoritas extends StatelessWidget {
  const Favoritas({
    super.key
  });

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(

            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 0, ),
                Center(child: Text("Linhas Favoritas")),
                SizedBox(width: 0, ),
                Icon(Icons.person),
              ],
            ),
            backgroundColor: Style.primaryColor,

          ),
        ),

        body: ListView(
          
          children: [
            

            Container(
              height: 80,
              padding: EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(

                          children: [
                            Icon(Icons.bus_alert),
                            Icon(Icons.snowing),
                            Icon(Icons.wheelchair_pickup)
                          ],
                        ),
                        Text("Estação Mussurunga"),
                        Text("1053")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                        
                      children: [
                        Text("Lotação"),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: SizedBox(
                                  width: 50,
                                  height: 5,
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)), ),
                                ),
                              ),
                              SizedBox(height: 1, ),
                              Container(
                                child: SizedBox(
                                  width: 50,
                                  height: 5,
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)), ),
                                ),
                              ),
                              SizedBox(height: 1, ),
                              Container(
                                child: SizedBox(
                                  width: 50,
                                  height: 5,
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)), ),
                                ),
                              ),
                              SizedBox(height: 1, ),
                              Container(
                                child: SizedBox(
                                  width: 50,
                                  height: 5,
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)), ),
                                ),
                              ),
                              SizedBox(height: 1, ),
                              Container(
                                child: SizedBox(
                                  width: 50,
                                  height: 5,
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)), ),
                                ),
                              ),
                              SizedBox(height: 1, ),
                              Container(
                                child: SizedBox(
                                  width: 50,
                                  height: 5,
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)), ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.wifi),
                        Text("   4 Min"),
                      ],

                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, )
                      ],

                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 80,
              padding: EdgeInsets.only(top: 8),
              color: Style.terciaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(

                          children: [
                            Icon(Icons.bus_alert),
                            Icon(Icons.snowing),
                            Icon(Icons.wheelchair_pickup)
                          ],
                        ),
                        Text("Patamares                "),
                        Text("1010")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(

                      children: [
                        Text("Lotação"),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: SizedBox(
                                  width: 50,
                                  height: 5,
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)), ),
                                ),
                              ),
                              SizedBox(height: 1, ),
                              Container(
                                child: SizedBox(
                                  width: 50,
                                  height: 5,
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)), ),
                                ),
                              ),
                              SizedBox(height: 1, ),
                              Container(
                                child: SizedBox(
                                  width: 50,
                                  height: 5,
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)), ),
                                ),
                              ),
                              SizedBox(height: 1, ),
                              Container(
                                child: SizedBox(
                                  width: 50,
                                  height: 5,
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)), ),
                                ),
                              ),
                              SizedBox(height: 1, ),
                              Container(
                                child: SizedBox(
                                  width: 50,
                                  height: 5,
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(15)), ),
                                ),
                              ),
                              SizedBox(height: 1, ),
                              Container(
                                child: SizedBox(
                                  width: 50,
                                  height: 5,
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(15)), ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.wifi),
                        Text(" 15 Min"),
                      ],

                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, )
                      ],

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Style.primaryColor,
        onPressed: () {},
        child: const Icon(Icons.add),
        ),
      );

  }
}



class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      alignment: Alignment.centerLeft,

      child: const TextField(
        decoration:
        InputDecoration(
          border: InputBorder.none,
          hintText: 'Insira o seu destino',
          suffixIcon: Icon(Icons.search, color: Colors.black, )

        ),
      ),
    );
  }
}