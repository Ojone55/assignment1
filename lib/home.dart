import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({Key?key}): super(key: key);


  @override
  State<Home> createState() =>  _HomeState();
   
  }

class _HomeState  extends State<Home>{
  List<String> moltivation =[
    '“You can get everything in life you want if you will just help enough other people get what they want.” —Zig Ziglar',
    '“Do not settle for average. Bring your best to the moment. Then, whether it fails or succeeds, at least you know you gave all you had.” —Angela Bassett',
    '“Inspiration does exist, but it must find you working.” —Pablo Picasso',
    '“Show up, show up, show up, and after a while the muse shows up, too.” —Isabel Allende',
    '“Do not bunt. Aim out of the ballpark. Aim for the company of immortals.” ―David Ogilvy',
    ' “I have stood on a mountain of nos for one yes.” —Barbara Elaine Smith',
    ' “If you believe something needs to exist, if it is something you want to use yourself, do not let anyone ever stop you from doing it.” —Tobias Lütke',
    '“The best way out is always through.” ―Robert Frost',
    '“If there is no struggle, there is no progress.” —Frederick Douglass',
    '“Courage is like a muscle. We strengthen it by use.” —Ruth Gordo',
    '“Develop success from failures, Discouragement and failure are two of the surest stepping stones to success.” —Dale Carnegie',
    ' "More is lost by indecision than wrong decision.” —Marcus Tullius Cicero',
    '"If the highest aim of a captain were to preserve his ship, he would keep it in port forever." —Thomas Aquinas',
    '“Keep a little fire burning; however small, however hidden.” ―Cormac McCarthy',
    ' “The only way of discovering the limits of the possible is to venture a little way past them into the impossible.” ―Arthur C. Clarke'
  ];


  List<String> screen=['Keep going'];

   


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
            child: Column(
              children: [
                SizedBox(height:50),

                Container(
                  height:120,

                  child:
                  Text('$screen',
                    style: TextStyle(fontSize:30)
                  ),
                ),
                Expanded(
                  child: GridView. builder(
                    padding: EdgeInsets.all(20),
                      itemCount: moltivation.length,
                      gridDelegate : SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,

                      ),
                      itemBuilder: (context,index){
                        return GestureDetector(
                          onTap:(){
                            setState(() {
                              screen.add(moltivation[index]);

                            });

                          },
                            child: Container(
                                color: Colors.indigo,
                                child:Center(
                                    child: Text('${moltivation[index]}',
                                        style: TextStyle(fontSize:20,
                                            fontStyle:FontStyle.italic
                                        )))
                            )
                            );
                      }),

                )
              ],
            )

        )
    );
  }}






