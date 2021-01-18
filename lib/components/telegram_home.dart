import 'package:flutter/material.dart';

class TelegramHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    Map<String, dynamic> coisas = {

      "image_url": [
        'https://miro.medium.com/max/2402/1*_-vJQqeCmpw-kghDFX8yJw.png',
        'https://pbs.twimg.com/profile_images/519180928539557888/R0bm9JR_.png',
        'https://avatars2.githubusercontent.com/u/30732658?s=280&v=4',
        'https://avatars1.githubusercontent.com/u/6026800?s=200&v=4',
        'https://s2.glbimg.com/5pgaEIiZXIVWgSTOtfKBtm5AHaU=/695x393/s2.glbimg.com/vME2Bq4OSpm6f6IE16BhcVLR98U=/695x0/s.glbimg.com/po/tt2/f/original/2014/11/14/java-logo.jpg',
        'https://yt3.ggpht.com/ytc/AAUvwngjsf0dSmd7L0dN0fSqcnLbz5u9rusz5v5jpjsF=s900-c-k-c0x00ffffff-no-rj',
        'https://media-exp1.licdn.com/dms/image/C560BAQGmM69Eb9blQg/company-logo_200_200/0/1610109465941?e=2159024400&v=beta&t=QxPbyfdK8XNuNXxerNPhbM-tnO0IwWIolTtISxWrdq4',
        'https://www.vexels.com/media/users//3/145908/raw/52eabf633ca6414e60a7677b0b917d92.jpg',
        'https://s2.glbimg.com/VD9XgaIKvSsGQCXNttt1lZHHY9o=/695x0/s.glbimg.com/po/tt2/f/original/2015/09/28/android.jpg'
      ],
      "name": [
        "Laravel Brasil",
        "Python Brasil",
        "Back-end Brasil",
        "GoLang Brasil",
        "Java Brasil",
        "Flutterando",
        "Hasura BR",
        "Otávio",
        "Android Studio"
      ]
    };


    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )
          ],
          title: Text(
            'Telegram',
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [

              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 22, 33, 1.0)
                  ),
                  currentAccountPicture: CircleAvatar(
                      child: Text(
                        'S',
                        style: TextStyle(
                            fontSize: 30
                        ),
                      )
                  ),
                  accountName: Text(
                      'Saulo Nascimento'
                  ),
                  accountEmail: Text(
                      '+55(79) 99886-3483'
                  )
              ),

              _buildListTile(
                  text: "Novo Grupo",
                  icon: Icons.supervised_user_circle_sharp
              ),

              _buildListTile(
                  text: "Contatos",
                  icon: Icons.my_library_books
              ),

              _buildListTile(
                  text: "Chamadas",
                  icon: Icons.phone
              ),

              _buildListTile(
                  text: "Pessoas Próximas",
                  icon: Icons.auto_awesome
              ),

              _buildListTile(
                  text: "Mensagens Salvas",
                  icon: Icons.assignment_sharp
              ),

              _buildListTile(
                  text: "Configurações",
                  icon: Icons.settings
              ),

              Container(
                height: 1,
                color: Colors.black26,
              ),

              _buildListTile(
                  text: "Convidar Amigos",
                  icon: Icons.person_add
              ),

              _buildListTile(
                  text: "Perguntas Frequentes",
                  icon: Icons.announcement_sharp
              ),

            ],

          ),
        ),

        body: Container(
          height: size.height,
          width: size.width,
          color: Color.fromRGBO(14, 22, 33, 1.0),
          child: ListView.builder(
            itemCount: 9,
            itemBuilder: (_, index) {
              var image = coisas['image_url'][index];
              var text = coisas['name'][index];

              return _buildBody(
                  size: size,
                  text: text,
                  urlImage: image);
            },
          ),
        )
    );
  }

  Widget _buildListTile({String text, IconData icon}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontSize: 16
        ),
      ),
    );
  }


  Widget _buildBody({Size size, String urlImage, String text}) {
    return Column(

      children: [

        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(

            children: [

              Padding(
                padding: const EdgeInsets.only(
                    left: 4
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(urlImage),
                  radius: 25,
                ),
              ),

              SizedBox(width: size.width * 0.01,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      text,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17
                      ),
                    ),

                    SizedBox(height: size.height * 0.006,),

                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          children: [

                            TextSpan(
                                text: 'Saulo:',
                                style: TextStyle(
                                    color: Colors.white
                                )
                            ),

                            TextSpan(
                                text: ' Olá Mundo!',
                                style: TextStyle(
                                    color: Colors.grey
                                )
                            ),
                          ]
                      ),
                    ),
                  ],

                ),
              ),

              SizedBox(width: size.width * 0.3,),

              Column(

                children: [

                  Text(
                    '22:20',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12
                    ),
                  ),

                  SizedBox(height: size.height * 0.005,),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[700],
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 20,
                    width: 40,
                    child: Center(
                      child: Text(
                        '9215',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  )

                ],

              )
            ],

          ),
        ),

        SizedBox(height: size.height * 0.002,),


        Container(
          height: 1,
          width: 285,
          color: Colors.black26,
        )

      ],
    );
  }
}
