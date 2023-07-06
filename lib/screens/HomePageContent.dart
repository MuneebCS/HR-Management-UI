import 'package:flutter/material.dart';

class Employee {
  final String name;
  final String position;
  final Color color;
  final String imageUrl;

  Employee({
    required this.name,
    required this.position,
    required this.color,
    required this.imageUrl,
  });
}

class Department {
  final String title;
  final String subtitle;
  final Color color;
  final Widget logo;

  Department(
      {required this.title,
      required this.subtitle,
      required this.color,
      required this.logo});
}

class HomePageContent extends StatefulWidget {
  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  List<Department> departments = [
    Department(
      title: 'Development',
      subtitle: '88 techies',
      color: const Color.fromARGB(255, 147, 205, 253),
      logo: Icon(Icons.developer_board, size: 30, color: Colors.black),
    ),
    Department(
      title: 'UI/UX design',
      subtitle: '45 creatives',
      color: const Color.fromARGB(255, 255, 247, 170),
      logo: Icon(Icons.design_services, size: 30, color: Colors.black),
    ),
    Department(
      title: 'QA testing',
      subtitle: '24 checkers',
      color: const Color.fromARGB(255, 241, 186, 204),
      logo: Icon(Icons.check, size: 30, color: Colors.black),
    ),
  ];
  List<Employee> employee = [
    Employee(
      name: 'Sam Smith',
      position: 'Frontend Developer',
      color: Color.fromARGB(255, 195, 223, 247),
      imageUrl: 'assets/images/face1.jpg',
    ),
    Employee(
      name: 'Jacob Gavrilov',
      position: 'QA Assistant',
      color: Color.fromARGB(255, 255, 219, 250),
      imageUrl: 'assets/images/face3.jpg',
    ),
    Employee(
      name: 'Stephanie Fleischer',
      position: 'UI/UX designer',
      color: Color.fromARGB(255, 245, 240, 206),
      imageUrl: 'assets/images/face2.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          // Wrap the content in SingleChildScrollView
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Today',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15.0,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 45.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/face1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Good Morning, Hannah',
                      style: TextStyle(
                        fontFamily: 'my10',
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search by name or job title',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Departments',
                      style: TextStyle(
                          fontFamily: 'my10',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 130, // Set a fixed height for the horizontal list
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: departments.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Container(
                          height: 5,
                          width: 130,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: departments[index].color,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              departments[index]
                                  .logo, // Emoji or logo passed as a parameter
                              const SizedBox(height: 5),
                              Text(
                                departments[index].title,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                departments[index].subtitle,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You recently worked with',
                      style: TextStyle(
                          fontFamily: 'my10',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: Container(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: employee.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Container(
                            height: 60,
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: employee[index].color,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage(employee[index].imageUrl),
                                    radius: 20,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        employee[index].name,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      employee[index].position,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
