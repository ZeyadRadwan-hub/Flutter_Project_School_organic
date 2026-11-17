import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/TeamspointchallengeProvider.dart';

class Teamspointchallenge extends StatelessWidget {
  const Teamspointchallenge({super.key});

  @override
  Widget build(BuildContext context) {
    Teamspointchallengeprovider provider = Provider.of<Teamspointchallengeprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Teams Point Challenge"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamSection(
                    teamName: "Team B",
                    score: provider.countB,
                    onAdd1: () => provider.addPoints('B', 1),
                    onAdd2: () => provider.addPoints('B', 2),
                    onAdd3: () => provider.addPoints('B', 3),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 2,
                    endIndent: 20,
                    indent: 10,
                  ),
                  TeamSection(
                    teamName: "Team A",
                    score: provider.countA,
                    onAdd1: () => provider.addPoints('A', 1),
                    onAdd2: () => provider.addPoints('A', 2),
                    onAdd3: () => provider.addPoints('A', 3),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: provider.resetScores,
              child: Text("Reset"),
            )
          ],
        ),
      ),
    );
  }
}

class TeamSection extends StatelessWidget {
  final String teamName;
  final int score;
  final VoidCallback onAdd1;
  final VoidCallback onAdd2;
  final VoidCallback onAdd3;

  const TeamSection({
    super.key,
    required this.teamName,
    required this.score,
    required this.onAdd1,
    required this.onAdd2,
    required this.onAdd3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(teamName, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Text("$score", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
        ElevatedButton(onPressed: onAdd1, child: Text("Add 1 Point")),
        SizedBox(height: 15),
        ElevatedButton(onPressed: onAdd2, child: Text("Add 2 Point")),
        SizedBox(height: 15),
        ElevatedButton(onPressed: onAdd3, child: Text("Add 3 Point")),
      ],
    );
  }
}