import 'package:flutter/material.dart';
 int operation=0;
    int num1=0;
    int num2=0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController barra = TextEditingController();
   
    
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(widget.title),
        ),
       
       body:Padding(
         padding: const EdgeInsets.all(20.0),
         child: Column(
         
          children: [
             TextField(
                        controller: barra,
                        style: TextStyle(color: Colors.black)
                        ),

                        SizedBox(height:30),
         
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 16, 148, 255),
                ),
                //The text and style of the button 
                child: Text("1", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  barra.text= barra.text+"1";
                },
              ),
              
              ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 16, 148, 255),
                ),
                //The text and style of the button 
                child: Text("2", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  barra.text= barra.text+"2";
                },
              ),

              ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 16, 148, 255),
                ),
                //The text and style of the button 
                child: Text("3", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  barra.text= barra.text+"3";
                },
              ),
         
              ],
            ),

            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 16, 148, 255),
                ),
                //The text and style of the button 
                child: Text("4", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  barra.text= barra.text+"4";
                },
              ),
              
              ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 16, 148, 255),
                ),
                //The text and style of the button 
                child: Text("5", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  barra.text= barra.text+"5";
                },
              ),

              ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 16, 148, 255),
                ),
                //The text and style of the button 
                child: Text("6", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  barra.text= barra.text+"6";
                },
              ),
         
              ],
            ),

            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 16, 148, 255),
                ),
                //The text and style of the button 
                child: Text("7", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  barra.text= barra.text+"7";
                },
              ),
              
              ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 16, 148, 255),
                ),
                //The text and style of the button 
                child: Text("8", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  barra.text= barra.text+"8";
                },
              ),

              ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 16, 148, 255),
                ),
                //The text and style of the button 
                child: Text("9", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  barra.text= barra.text+"9";
                },
              ),
         
              ],
            ),

            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),
                //The text and style of the button 
                child: Text("+", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  
                  num1=int.parse(barra.text);
                  barra.text="";
                  operation=1;

                },
              ),
                ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 16, 148, 255),
                ),
                //The text and style of the button 
                child: Text("0", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  barra.text= barra.text+"0";
                },
              ),
              ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),
                //The text and style of the button 
                child: Text("-", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  num1=int.parse(barra.text);
                  barra.text="";
                  operation=2;
                },
              ),
              
              
         
              ],
            ),

            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),
                //The text and style of the button 
                child: Text("#", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  barra.text="";
                },
              ),
                ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),
                //The text and style of the button 
                child: Text("x", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  num1=int.parse(barra.text);
                  barra.text="";
                  operation=3;
                },
              ),
              ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),
                //The text and style of the button 
                child: Text("/", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  num1=int.parse(barra.text);
                  barra.text="";
                  operation=4;
                },
              ),
              
              
         
              ],
            ),

            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 248, 4, 4),
                ),
                //The text and style of the button 
                child: Text("CALCULAR", style: TextStyle(color: Colors.white)),
                onPressed: (){
                   num2=int.parse(barra.text);
                  if (operation==1){
                    barra.text="${sumar(num1, num2)}";

                  }else if (operation==2){
                    restar(num1, num2);
                    barra.text="${restar(num1, num2)}";

                  }else if (operation==3){
                    multiplicar(num1, num2);
                    barra.text="${multiplicar(num1, num2)}";

                  }else if(operation==4){
                    sumar(num1, num2);
                    barra.text="${dividir(num1, num2)}";

                  }
                },
              ),
              
              
         
              ],
            )
          ],
         ),
       )
        
        );
  }
}

int sumar(int num1,int num2) {
  int resultado = num1 + num2;
  return resultado;

}
int restar(int num1,int num2) {
  int resultado = num1 - num2;
  return resultado;

}

int multiplicar(int num1,int num2) {
  int resultado = num1 * num2 ;
  return resultado;
}

double dividir(int num1,int num2) {
  double resultado = num1 / num2;
  return resultado;

}


  
  