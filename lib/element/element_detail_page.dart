import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:xinshijie_flutter/api/element_api.dart';
import 'package:xinshijie_flutter/model/element_entity.dart';

class ElementDetailPage extends StatefulWidget {
  final int wid;
  final int eid;

  ElementDetailPage({required this.wid, required this.eid});

  @override
  _ElementDetailPageState createState() => _ElementDetailPageState();
}

class _ElementDetailPageState extends State<ElementDetailPage> {
  late Future<ElementEntity> _elementFuture;

  @override
  void initState() {
    super.initState();
    _elementFuture = _fetchElementEntity();
  }

  Future<ElementEntity> _fetchElementEntity() async {
    return await ElementApi.getInfo(widget.wid, widget.eid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Element Details'),
      ),
      body: FutureBuilder<ElementEntity>(
        future: _elementFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (!snapshot.hasData || snapshot.data!.contentList == null) {
            return Text('No data found');
          } else {
            final element = snapshot.data!;
            return ListView(
              children: <Widget>[
                Text('Name: ${element.title ?? ""}'),
                Text('Type: ${element.tags ?? ""}'),
                Text('Created: ${element.createTime}'),
                ...element.contentList!.map((item) => _buildExpandablePanel(item)).toList(),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildExpandablePanel(ElementContent item) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          child: ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              header: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(item.title ?? "", style: Theme.of(context).textTheme.bodyText1),
              ),
              collapsed: Container(),
              expanded: Padding(
                padding: const EdgeInsets.all(16.0),
                child: HtmlWidget(item.contentZip ?? ""),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
