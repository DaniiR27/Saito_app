import 'package:flutter/material.dart';
import 'package:saito_app/pages/site_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();
  final List sites = [
    ["Name", "Ubicacion"],
    ["Name1", "Ubicacion"],
    ["Name2", "Ubicacion"],
    ["Name3", "Ubicacion"],
    ["Name4", "Ubicacion"],
    ["Name5", "Ubicacion"]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //AppBar
          SliverAppBar.large(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            title: const Text(
              "S A I T O",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          // App
          SliverToBoxAdapter(
            child: Card(
              color: Colors.white,
              child: ListView.builder(
                //  add the same scrollController here
                controller: scrollController,
                shrinkWrap: true,
                itemCount: sites.length,
                itemBuilder: (BuildContext context, int index) {
                  return SiteTile(
                    site_name: sites[index][0],
                    visited: true,
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
