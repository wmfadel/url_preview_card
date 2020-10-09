import 'package:flutter/material.dart';
import 'package:url_preview_card/url_preview_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Url Preview Card Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Url Preview Card Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          UrlPreviewCard(
            url:
                'https://hub.maf.org/testimonial/donor-spotlight-a-conversation-with-fred',
            bgColor: Colors.white,
            titleLines: 2,
            descriptionLines: 3,
            imageLoaderColor: Colors.white,
            previewHeight: 150,
            previewContainerPadding: EdgeInsets.all(10),
          ),
          UrlPreviewCard(
            url:
                'https://hub.maf.org/location/country/lesotho/hope-comes-by-air-and-foot',
            bgColor: Colors.black,
            titleStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Sansita Swashed'
            ),
            descriptionStyle: TextStyle(
              color: Colors.white
            ),
            siteNameStyle: TextStyle(
              color: Colors.white
            ),
            titleLines: 2,
            descriptionLines: 3,
            imageLoaderColor: Colors.white,
            previewHeight: 150,
            onTap: () => print('Hello Flutter URL Preview'),
          ),
          UrlPreviewCard(
            url:
                'https://hub.maf.org/location/country/ecuador/eternal-significance',
            bgColor: Colors.blueAccent,
            titleStyle: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
            descriptionStyle: TextStyle(
              color: Colors.amber,
            ),
            siteNameStyle: TextStyle(
              color: Colors.white,
              fontFamily: 'Sansita Swashed'
            ),
            titleLines: 2,
            descriptionLines: 3,
            imageLoaderColor: Colors.white,
            previewHeight: 150,
            previewContainerPadding: EdgeInsets.all(20),
            onTap: () => print('Hello Flutter URL Preview'),
          ),
        ],
      ),
    );
  }
}
