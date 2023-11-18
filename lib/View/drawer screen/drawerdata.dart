import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spark/common/iconchanges.dart';

class drwerdata extends StatelessWidget {
  const drwerdata({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<navigationprovider>(context);
    final iscollapse = pro.iscolapsed;
    return Container(
      width: iscollapse ? MediaQuery.of(context).size.width * 0.05 : null,
      child: Drawer(
        width: 250,
        child: Container(
          child: ListView(
            children:  [
              iscollapse
                  ?const Center(
                      child: Text(
                      'S',
                      style: TextStyle(fontSize: 30),
                    ))
                  : Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).viewPadding.top),
                      child:const Text(
                        "Spark Empower",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ),
          
              drawerdatas("Dashboard", Icons.dashboard, iscollapse),
          
              drawerdatas("Job Grid", Icons.punch_clock, iscollapse),
          
             iscollapse?const ListTile(leading: Icon(Icons.person_2_outlined),) : ExpansionTile(
                title:const Text("User Management"),
                leading:const Icon(Icons.person_2_outlined),
                children: [
                  drawerdatas("Users", Icons.person_2_outlined, iscollapse),
                  drawerdatas("Roles", Icons.person, iscollapse),
                ],
              ),
          
              drawerdatas("Costemer", Icons.people, iscollapse),
              drawerdatas("Job Board", Icons.dashboard, iscollapse),
              drawerdatas("Job Board Standings", Icons.scale_sharp, iscollapse),
               drawerdatas("Sales Standings", Icons.save, iscollapse),
          
              iscollapse? ListTile(leading: Icon(Icons.currency_franc),) :ExpansionTile(
                title: Text("Financer"),
                leading: Icon(Icons.person_2_outlined),
                children: [
                  drawerdatas("Financer Shoots", Icons.person_2_outlined, iscollapse),
                  drawerdatas("Financer Apps", Icons.currency_bitcoin, iscollapse),
                ],
              ),
              drawerdatas("Install Agreements", Icons.punch_clock, iscollapse),
              drawerdatas("Companies & Teams", Icons.punch_clock, iscollapse),
              drawerdatas("Auth Logs", Icons.punch_clock, iscollapse),
          
              iscollapse? Icon(Icons.settings) : ExpansionTile(
                title: Text("laxonomas"),
                leading: Icon(Icons.settings),
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    drawerdatas("Load Sources", Icons.person_2_outlined, iscollapse),
                    drawerdatas("Utility Companies", Icons.person, iscollapse),
                    drawerdatas("Doal Types", Icons.person, iscollapse),
                    drawerdatas("Financing", Icons.person, iscollapse),
                    drawerdatas("Root Type", Icons.person, iscollapse),
                      ],
                    ),
                  )

                ],
              ),
              drawerdatas("All activity log", Icons.person, iscollapse),

              Spacer(),
              iconfuntion(context, iscollapse),
             const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }

  iconfuntion(BuildContext context, bool iscolpe) {
    double size = 52;
    final icon = iscolpe ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    return InkWell(
      onTap: () {
        var provider = Provider.of<navigationprovider>(context, listen: false);
        provider.changescolapse();
      },
      child: Container(
        width: size,
        height: size,
        child: Icon(
          icon,
        ),
      ),
    );
  }

  drawerdatas(String tittle, IconData icon, bool iscolapsed) {
    return iscolapsed
        ? ListTile(
            leading: Icon(icon),
          )
        : ListTile(
            leading: Icon(icon),
            title: Text(tittle),
          );
  }

  listofuser(tittle, icon, bool iscolapsed) {
    return iscolapsed? ListTile(leading: icon,): ExpansionTile(
      title: tittle,
      leading: icon,
      children: [
        drawerdatas(tittle, icon, iscolapsed)
      ],

    );
  }
}
