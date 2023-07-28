import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.deepOrange,
        onPressed: (){},
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image:  DecorationImage(
                image: NetworkImage('https://i.pinimg.com/564x/21/c2/bf/21c2bfe8d472fc1d099f00f66257c1f6.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Text('Your soulmates',
              style: GoogleFonts.aladin(
                fontSize: 35,
                color: Colors.white
              ),
              ),
                const SizedBox(height: 20,),
                Expanded(
                  child: ListView(
                    children: [
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('John Doe',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('online', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.redAccent,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('David Laid',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Last seen today', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('Tom Cruise',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Last seen Yesterday', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('John Doe',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('online', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('David Warner',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Offline', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.yellow,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('Tom Latham',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Online', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('John Cena',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('online', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.purple,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('David Laid',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Last seen today', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('Henry Klassen',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Last seen Yesterday', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.grey,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('Kane Williamson',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('online', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.deepPurple,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('Finn Alen',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Last Week', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('Henry cevil',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Last seen today', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('John Doe',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('online', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.redAccent,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('David Laid',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Last seen today', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('Tom Cruise',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Last seen Yesterday', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('John Doe',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('online', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.redAccent,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('Kane Williamson',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('online', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.deepPurple,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('Finn Alen',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Last Week', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('Henry cevil',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Last seen today', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('John Doe',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('online', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.redAccent,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('David Laid',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Last seen today', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('Tom Cruise',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('Last seen Yesterday', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.white,),
                          title: Text('John Doe',
                            style: GoogleFonts.aladin(color: Colors.white),
                          ),
                          subtitle: Text('online', style: GoogleFonts.aladin(color: Colors.white54),),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.redAccent,
                          ),
                        ),
                      ),


                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
// https://static.vecteezy.com/system/resources/previews/001/967/168/original/attractive-couple-cuddling-free-vector.jpg