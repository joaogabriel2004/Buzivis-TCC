import 'package:buzivis_app/pages/favorite_page.dart';
import 'package:buzivis_app/pages/principal_page.dart';
import 'package:buzivis_app/utils/style.dart';
import 'package:flutter/material.dart';

class OpcPerto extends StatelessWidget {
  const OpcPerto({
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
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.settings,color:Colors.white),
                title: Text("Configurações",style: TextStyle(color: Colors.white),),
                subtitle: Text("Configurações da Buzivis",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward, color: Colors.white),
                onTap: () {
                  
                }
               ),

               ListTile(
                leading: Icon(Icons.star,color:Colors.white),
                title: Text("Linhas Favoritas",style: TextStyle(color: Colors.white),),
                subtitle: Text("Suas linhas favoritas",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward, color: Colors.white),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favoritas()));
                }
               ),

               ListTile(
                leading: Icon(Icons.help_center,color:Colors.white),
                title: Text("Suporte",style: TextStyle(color: Colors.white),),
                subtitle: Text("Acione o suporte",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward, color: Colors.white),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favoritas()));
                }
               ),

               ListTile(
                leading: Icon(Icons.ads_click_sharp,color:Colors.white),
                title: Text("Remover Anúncios",style: TextStyle(color: Colors.white),),
                subtitle: Text("Acessar planos pagos",style: TextStyle(color: Colors.white),),
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
                height: h * 0.9425,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/images/mapa.png", ),
                    fit: BoxFit.cover
                  )
                ),
              ),

              Container(

                width: w,
                height: 540,
                decoration: BoxDecoration(
                  color: Style.secondaryColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                ),
                child: Column(
                  children: [
                    GestureDetector(                      
                      onTap: () {
                        Navigator.pop(context);
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
                            child: Center(child: Text("Ver linhas favoritas", style: TextStyle(color: Colors.white), ))
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
                    ),
                    SizedBox(height: 10, ),
                    Container(
                      width: w,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Style.primaryColor,
                      ),
                      child: Center(
                        child: Text(
                          "Algumas opções próximas de você!",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),


                    Container(
                      height: 80,
                      padding: EdgeInsets.only(top:8),
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
                                Text("   2 Min"),
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
                      padding: EdgeInsets.only(top:8),
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
                                Text(" 2 Min"),
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
                      padding: EdgeInsets.only(top:8),
                      color: Style.secondaryColor,
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
                                Text("Castelo Branco         "),
                                Text("610")
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
                                            color: Colors.yellow,
                                            borderRadius: BorderRadius.circular(15)), ),
                                        ),
                                      ),
                                      SizedBox(height: 1, ),
                                      Container(
                                        child: SizedBox(
                                          width: 50,
                                          height: 5,
                                          child: Container(decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            borderRadius: BorderRadius.circular(15)), ),
                                        ),
                                      ),
                                      SizedBox(height: 1, ),
                                      Container(
                                        child: SizedBox(
                                          width: 50,
                                          height: 5,
                                          child: Container(decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            borderRadius: BorderRadius.circular(15)), ),
                                        ),
                                      ),
                                      SizedBox(height: 1, ),
                                      Container(
                                        child: SizedBox(
                                          width: 50,
                                          height: 5,
                                          child: Container(decoration: BoxDecoration(
                                            color: Colors.yellow,
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
                                Text("   5 Min"),
                              ],

                            ),
                          ),
                          Container(
                            child: Row(
                              children: [                               
                                Icon(Icons.star, color: Colors.white, )
                              ],

                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 80,
                      padding: EdgeInsets.only(top:8),
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
                                Text("Dom Avelar               "),
                                Text("307")
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
                                Text("   14 Min"),
                              ],

                            ),
                          ),
                          Container(
                            child: Row(
                              children: [                               
                                Icon(Icons.star, color: Colors.white, )
                              ],

                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: w,
                      height: 29,
                      color: Style.primaryColor,
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