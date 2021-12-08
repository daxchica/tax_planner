import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sri_help/bloc_navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_link_previewer/flutter_link_previewer.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' show PreviewData;

String title = "IMPLANER - Noticias";

class MisNoticias extends StatelessWidget with NavigationState {
  const MisNoticias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: MiNoticia(
        title: title,
      ),
    );
  }
}

class MiNoticia extends StatefulWidget {
  const MiNoticia({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MiNoticiaState createState() => _MiNoticiaState();
}

class _MiNoticiaState extends State<MiNoticia> {
  Map<String, PreviewData> datas = {};

  List<String> get urls => const [
        'https://www.radiohuancavilca.com/cifras',
        'https://www.eluniverso.com/noticias/economia',
        'https://www.elcomercio.com',
        'https://www.expreso.ec',
      ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            BlocProvider.of<NavigationBloc>(context)
                .add(NavigationEvent.homePageClickedEvent);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: urls.length,
        itemBuilder: (context, index) => Align(
          alignment: Alignment.centerLeft,
          child: Container(
            key: ValueKey(urls[index]),
            margin: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Color(0xfff7f7f8),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: LinkPreview(
                enableAnimation: true,
                onPreviewDataFetched: (data) {
                  setState(
                    () {
                      datas = {
                        ...datas,
                        urls[index]: data,
                      };
                    },
                  );
                },
                previewData: datas[urls[index]],
                text: urls[index],
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
