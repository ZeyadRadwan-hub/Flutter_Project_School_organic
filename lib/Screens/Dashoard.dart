import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  final Color color;
  final String text;

  const TopCard({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Card(
        color: color,
        child: SizedBox(
          height: 100,
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 13, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class RecordCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final String amount;
  final Color amountColor;

  const RecordCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.amountColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(
          title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              amount,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: amountColor),
            ),
          ],
        ),
      ),
    );
  }
}

class Dashoard extends StatelessWidget {
  Dashoard({super.key});

  final List<RecordCard> records = [
    RecordCard(
      icon: Icons.shopping_cart,
      iconColor: Colors.red,
      title: "Shopping",
      subtitle: "Supermarket",
      amount: "\$400.00",
      amountColor: Colors.red,
    ),
    RecordCard(
      icon: Icons.work,
      iconColor: Colors.blue,
      title: "Salary",
      subtitle: "Monthly income",
      amount: "\$3500.00",
      amountColor: Colors.green,
    ),
    RecordCard(
      icon: Icons.restaurant,
      iconColor: Colors.orange,
      title: "Restaurant",
      subtitle: "Dinner with friends",
      amount: "\$120.00",
      amountColor: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(Icons.menu_outlined),
        actions: [
          Icon(Icons.notification_add_outlined),
        ],
        title: Text("Dashboard"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "List of Account",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TopCard(color: Colors.black, text: "Bank Account"),
                    SizedBox(width: 8),
                    TopCard(color: Colors.blueAccent, text: "Bank Account"),
                    SizedBox(width: 8),
                    TopCard(color: Colors.green, text: "Bank Account"),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 4,
                      color: Colors.white,
                      child: SizedBox(
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$4800.00",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Total Balance",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Last Records Overview",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView.separated(
                  itemCount: records.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return records[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}