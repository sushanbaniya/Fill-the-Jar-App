import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(),
        theme: ThemeData(
            iconTheme: IconThemeData(
              color: Colors.green,
        size: 50,
            ),
            drawerTheme: DrawerThemeData(backgroundColor: Colors.blue,)));
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool fillColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [Text('App Developed SUSHAN BANIYA')],
      persistentFooterAlignment: AlignmentDirectional.center,
      drawer: ClipRRect(
        borderRadius: BorderRadius.circular(900),
        child: Drawer()),
      appBar: AppBar(
        title: Column(children: [Text(
          'practice',
          style: GoogleFonts.bebasNeue(fontSize: 30, letterSpacing: 15,),
        ),
        SizedBox(height: 35),
        Image.asset('images/juggle.gif', fit: BoxFit.cover)
         ]),
        toolbarHeight: 260,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(90),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
               Icon(Icons.add_business_rounded, color: Colors.grey, size: 500),
              Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                //  Icon(Icons.widgets),
                  // Container(height: 300, width: 300, child: Image.asset('images/giphy.gif', fit: BoxFit.cover)),
                  SizedBox(height: 30),
          
                  Container(
                    height: 18,
                    width: 100,
                    decoration: BoxDecoration(
                      color: fillColor == true ? Colors.lightBlueAccent : null,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: fillColor == true ? Colors.lightBlueAccent : null,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Container(
                                // alignment: Alignment.bottomLeft ,
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white, width: 1),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 9,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 70),
                  fillColor == true
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: Text('EMPTY THE JAR'),
                          onPressed: () {
                            setState(
                              () {
                                fillColor = !fillColor;
                              },
                            );
                          },
                        )
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: Text('FILL THE JAR'),
                          onPressed: () {
                            setState(
                              () {
                                fillColor = !fillColor;
                              },
                            );
                          },
                        ),
                  Container(
                    height: 500,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),
                ],
            ),
              ),]
          ),
        ),
      ),
    );
  }
}
