import 'package:buzivis_app/pages/favorite_page.dart';
import 'package:buzivis_app/pages/menu_aberto.dart';
import 'package:buzivis_app/pages/selected_bus1.dart';
import 'package:buzivis_app/utils/style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key
  });



  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    String valor = "";
    return Scaffold(
      
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(

          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 0, ),
              Center(child: TextBox()),
              SizedBox(width: 0, ),
              Icon(Icons.person),
            ],
          ),
          backgroundColor: Style.primaryColor,

        ),
      ),

      drawer: Drawer(
        backgroundColor: Style.primaryColor,
        child: ListView(
          children: < Widget > [
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text("Configurações", style: TextStyle(color: Colors.white), ),
              subtitle: Text("Configurações da Buzivis", style: TextStyle(color: Colors.white), ),
              trailing: Icon(Icons.arrow_forward, color: Colors.white),
              onTap: () {

              }
            ),

            ListTile(
              leading: Icon(Icons.star, color: Colors.white),
              title: Text("Linhas Favoritas", style: TextStyle(color: Colors.white), ),
              subtitle: Text("Suas linhas favoritas", style: TextStyle(color: Colors.white), ),
              trailing: Icon(Icons.arrow_forward, color: Colors.white),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favoritas()));
              }
            ),

            ListTile(
              leading: Icon(Icons.help_center, color: Colors.white),
              title: Text("Suporte", style: TextStyle(color: Colors.white), ),
              subtitle: Text("Acione o suporte", style: TextStyle(color: Colors.white), ),
              trailing: Icon(Icons.arrow_forward, color: Colors.white),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favoritas()));
              }
            ),

            ListTile(
              leading: Icon(Icons.ads_click_sharp, color: Colors.white),
              title: Text("Remover Anúncios", style: TextStyle(color: Colors.white), ),
              subtitle: Text("Acessar planos pagos", style: TextStyle(color: Colors.white), ),
              trailing: Icon(Icons.arrow_forward, color: Colors.white),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favoritas()));
              }
            )
          ],
        )
      ),

      body: ListView(
        children: [

          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [

              Container(
                width: w,
                height: h * 0.941,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/images/mapa.png", ),
                    fit: BoxFit.cover
                  )
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Ponto1()));
                  },
                  child: Container(
                    width: w,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                    ),

                  ),
                ),
              ),



              Container(

                width: w,
                height: 160,
                decoration: BoxDecoration(
                  color: Style.secondaryColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OpcPerto()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Style.primaryColor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))),

                        width: w,
                        height: 48,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 37,
                              height: 4,
                              child: Container(decoration: BoxDecoration(
                                color: Style.secondaryColor,
                                borderRadius: BorderRadius.circular(15)), ),
                            ),
                          ],
                        )

                      ),
                    ),
                    Container(
                      color: Style.secondaryColor,
                      child: Column(
                        children: [
                          SizedBox(height: 10, ),
                          Container(
                            width: 400,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Style.primaryColor,
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: Center(child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favoritas()));
                              },
                              child: Text("Ver linhas favoritas", style: TextStyle(color: Colors.white), )))
                          ),
                          SizedBox(height: 10, ),
                          Text("Pesquisar por linha"),
                          SizedBox(height: 10, ),


                          Container(
                            width: 200,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: TextField(
                              onChanged: (text) {
                                
                                print("TextField: $text");
                              },
                              decoration:
                              InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Ex: 1053',
                                suffixIcon: Icon(Icons.search, color: Colors.black, )

                              ),
                            )
                          )
                        ],
                      )
                    )
                  ],
                ),

              ),


            ],

          )

        ],
      )
      /*extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Style.primaryColor,
        onPressed: () {},
        child: const Icon(Icons.add),
        ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Style.primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(

          )
        )
      ),*/



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