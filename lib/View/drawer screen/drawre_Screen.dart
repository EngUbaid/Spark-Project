import 'package:flutter/material.dart';
import 'package:kanban_board/models/inputs.dart';
import 'package:provider/provider.dart';
import 'package:spark/View/drawer%20screen/drawerdata.dart';
import 'package:spark/common/iconchanges.dart';

class DrwerScreen extends StatefulWidget {
  const DrwerScreen({super.key});

  @override
  State<DrwerScreen> createState() => _DrwerScreenState();
}

class _DrwerScreenState extends State<DrwerScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<navigationprovider>(context);
    var isCollapsed = provider.iscolapsed;
    return Scaffold(
      body: Row(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: isCollapsed ? 80 : 250,
            child: drwerdata(),
          ),
        const  SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(179, 246, 233, 233)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.settings),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.dashboard_customize),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.cleaning_services),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.person_2_outlined),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.golf_course),
                          SizedBox(
                            width: 70,
                          ),
                          Icon(Icons.notifications),
                          Column(
                            children: [
                              Text("Super Admin"),
                              Text("Admin"),
                            ],
                          ),
                          CircleAvatar(child: Icon(Icons.person_2_outlined))
                        ],
                      ),
                    ),
                  const  SizedBox(
                      height: 10,
                    ),
                  const  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Job Board",
                          style: TextStyle(fontSize: 30),
                        ),
                        Divider(
                          thickness: 50,
                          color: Colors.black,
                        ),
              
                        SizedBox(
                          width: 20,
                        ),
              
                        Text(
                          "DashBoard / Job Board",
                          style: TextStyle(fontSize: 20),
                        ),
              
                        SizedBox(
                          width: 30,
                        ),
              
                        Text("Hide Empty Stages"),
                        Icon(
                          Icons.toggle_on,
                          size: 50,
                        ),
              
                        SizedBox(
                          width: 10,
                        ),
              
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          kanboarddata(),
                          kanboarddata(),
                          kanboarddata(),
                          kanboarddata(),
                          kanboarddata(),
                          kanboarddata(),
                          kanboarddata(),
                          kanboarddata()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  kanboarddata() {
    return Column(
      children: [
        Container(
          height: 500,
          width: 200,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                carddata(),
                cardanotherdata(),
                cardanotherdata(),
                cardanotherdata(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  carddata() {
    return Card(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(1)),
              child:const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("On Hold"),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text("39"),
                  )
                ],
              )),
        const  SizedBox(
            height: 20,
          ),
        const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Ali"),
              Text("Ali"),
            ],
          ),
        const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Ali"),
              Text("Ali"),
            ],
          ),
        const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Ali"),
              Text("Ali"),
            ],
          ),
        const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Ali"),
              Text("Ali"),
            ],
          ),
        const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Ali"),
              Text("Ali"),
            ],
          ),
        const  SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("1")),
              ),
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("177")),
              ),
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("1")),
              ),
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("1")),
              ),
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("1")),
              ),
            ],
          ),
         const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.message)),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            ],
          )
        ],
      ),
    );
  }

   cardanotherdata() {
    return Card(
      child: Column(
        children: [
        const  SizedBox(
            height: 20,
          ),
        const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Ali"),
              Text("Ali"),
            ],
          ),
        const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Ali"),
              Text("Ali"),
            ],
          ),
        const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Ali"),
              Text("Ali"),
            ],
          ),
        const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Ali"),
              Text("Ali"),
            ],
          ),
        const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Ali"),
              Text("Ali"),
            ],
          ),
        const  SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("1")),
              ),
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("177")),
              ),
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("1")),
              ),
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("1")),
              ),
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("1")),
              ),
            ],
          ),
        const  SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.message)),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            ],
          )
        ],
      ),
    );
  }
}
