import 'package:flutter/material.dart';

class SiteTile extends StatelessWidget {
  final String site_name;
  final bool visited;
  const SiteTile({super.key, required this.site_name, required this.visited});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.amber,
        height: 100,
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(12)),
            const Card(),
            Text(site_name),
            Text(visited.toString())
          ],
        ),
      ),
    );
  }
}
