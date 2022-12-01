import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

String font = 'Roboto Slab';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: font,
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List name = [
    'Fleur De Leah',
    'Metrophobic',
    'Dangrek',
    'Playball',
    'Imperial Script',
    'Quantico',
    'Kumar One Outline',
    'Alatsi',
    'Allan',
    'Srisakdi',
    'Purple Purse',
    'Sorts Mill Goudy',
    'Tangerine',
    'Miltonian',
    'Caveat',
    'Qwigley',
    'Lemon',
    'Annie Use Your Telescope',
    'Cutive Mono',
    'Island Moments',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text("Font Style",style: GoogleFonts.getFont(font)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: name.length,
              itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  setState(() {
                    font = name[index];
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen1()));
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green.withOpacity(0.2),
                    child: Text((index+1).toString(),style: const TextStyle(color: Colors.black),),
                  ),
                  title: Text(name[index],style: GoogleFonts.getFont(name[index])),
                  ),
              );
              },
              separatorBuilder: ((context, index) {
                return const Divider();
              }
            ) 
          )
          )
        ],
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        children: [
          SizedBox(
            width: 120,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("Previous",style: GoogleFonts.getFont(font))
            ),
          ),
          SizedBox(
            width: 120,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen2()));
              }, 
              child: Text("Next",style: GoogleFonts.getFont(font))
            ),
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(font,style: GoogleFonts.getFont(font)),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("In general, developing a mobile application is a complex and challenging task. There are many frameworks available to develop a mobile application. Android provides a native framework based on Java language and iOS provides a native framework based on Objective-C / Swift language. However, to develop an application supporting both the OSs, we need to code in two different languages using two different frameworks. To help overcome this complexity, there exists mobile frameworks supporting both OS. These frameworks range from simple HTML based hybrid mobile application framework (which uses HTML for User Interface and JavaScript for application logic) to complex language specific framework (which do the heavy lifting of converting code to native code). Irrespective of their simplicity or complexity, these frameworks always have many disadvantages, one of the main drawback being their slow performance.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.getFont(font),),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}


class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thank You",style: GoogleFonts.getFont(font,fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green),),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    child: Text("Previous",style: GoogleFonts.getFont(font),)
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                    onPressed: (){
                      SystemNavigator.pop();
                    }, 
                    child: Text("Exit",style: GoogleFonts.getFont(font))
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}