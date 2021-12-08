import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';
import 'package:sri_help/bloc_navigation_bloc/navigation_bloc.dart';

class KchFMNews extends StatefulWidget with NavigationState {
  const KchFMNews({Key? key}) : super(key: key);

  @override
  _KchFMNewsState createState() => _KchFMNewsState();
}

class _KchFMNewsState extends State<KchFMNews> {
  final webScraper = WebScraper('https://www.kchcomunicacion.com');
  List<Map<String, dynamic>>? newsLinks;
  // late List<Map<String, dynamic>> newsTitles;

  void _getDataFromWeb() async {
    if (await webScraper.loadWebPage('/')) {
      setState(
        () {
          newsLinks = webScraper.getElement('h2 > a', ['href']);

          // productDescriptions = webScraper
          //     .getElement('div > div:nth-child(2) > div > div.entry-blog-summery > p', ['class']);
        },
      );
    }
  }

  @override
  void initState() {
    super.initState;
    _getDataFromWeb();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          title: const Text('KCh Noticias'),
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent.homePageClickedEvent);
            },
          ),
        ),
        body: SafeArea(
          child: newsLinks == null
              ? const Center(
                  child:
                      CircularProgressIndicator(), // Loads Circular Loading Animation
                )
              : ListView.builder(
                  itemCount: newsLinks!.length,
                  itemBuilder: (BuildContext context, int index) {
                    // Attributes are in the form of List<Map<String, dynamic>>.
                    Map<String, dynamic> attributes =
                        newsLinks![index]['attributes'];
                    return ExpansionTile(
                      title: Text(attributes['href']),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  // child:
                                  // Text(productDescriptions[index]['class']),
                                  // margin: const EdgeInsets.only(bottom: 10.0),
                                  ),
                              InkWell(
                                onTap: () {
                                  // uses UI Launcher to launch in web browser & minor tweaks to generate url
                                  launch(
                                      // webScraper.baseUrl! +
                                      attributes['href']);
                                },
                                child: const Text(
                                  'Leer Articulo',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
        ),
      ),
    );
  }
}
