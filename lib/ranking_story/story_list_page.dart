import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xinshijie_flutter/api/story_api.dart';
import 'package:xinshijie_flutter/model/story_entity.dart';
import 'package:xinshijie_flutter/ranking_story/story_cell.dart';

class StoryListPage extends StatefulWidget {
  final int wid;
  final String wname;

  StoryListPage(this.wid,this.wname);
  @override
  _StoryListPageState createState() => _StoryListPageState();
}

class _StoryListPageState extends State<StoryListPage> {
  List<StoryEntity> stories = [];
  int currentPage = 1;
  bool isLoading = false;
  ScrollController _scrollController = ScrollController();
  String dropdownValue1 = 'One';
  String dropdownValue2 = 'One';
  String dropdownValue3 = 'One';


  void reloadData({String searchQuery = ''}) async {
    setState(() {
      isLoading = true;
      stories.clear();
      currentPage = 1;
    });

    // 你的加载逻辑，可能需要根据搜索查询和下拉选项来过滤数据
    // 例如：
    List<StoryEntity> elist = await StoryApi.getList({
      "pageNum": currentPage.toString(),
      // "wid": widget.wId.toString(),
      "wid":"1",
      "title": searchQuery,
      "filter1": dropdownValue1,
      "filter2": dropdownValue2,
      "filter3": dropdownValue3
    });

    Future.microtask(() {
      if (mounted) {
        setState(() {
          if (elist != null && elist.isNotEmpty) {
            stories.addAll(elist);
            currentPage++;
          }
          isLoading = false;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _loadMore();
  }

  void _onScroll() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent && !isLoading) {
      _loadMore();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _loadMore() async {
    // late int wid=this.widget.wId;
    late int wid=1;
    if (isLoading) return;
    setState(() => isLoading = true);
    List<StoryEntity>  elist= await StoryApi.getList({"pageNum" : currentPage.toString(),"wid":wid.toString()});
    // 使用 Future.microtask 延迟调用 setState
    Future.microtask(() {
      if (mounted) {
        setState(() {
          // 如果 elist 为空或长度为 0，则不再更新数据和增加页码
          if (elist != null && elist.isNotEmpty) {
            stories.addAll(elist);
            currentPage++;
          }
          // 更新加载状态
          isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.wname+'-故事列表'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              // 实现额外筛选逻辑
            },
          ),
        ],
      ),
      body: Column(
        children: [
          buildSearchBox(),
          buildFilterBox(),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: stories.length,
              itemBuilder: (context, index) {
                return StoryCell(stories[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSearchBox() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: '搜索',
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.search),
        ),
        onSubmitted: (value) {
          // 搜索逻辑
          reloadData(searchQuery: value);
        },
      ),
    );
  }

  // Widget buildDropdownButton(String dropdownValue, Function(String?) onChanged) {
  //   return DropdownButton<String>(
  //     value: dropdownValue,
  //     onChanged: (String? newValue) {
  //       onChanged(newValue); // 使用回调函数更新状态
  //     },
  //     items: <String>['One', 'Two', 'Three', 'Four']
  //         .map<DropdownMenuItem<String>>((String value) {
  //       return DropdownMenuItem<String>(
  //         value: value,
  //         child: Text(value),
  //       );
  //     }).toList(),
  //   );
  // }
  // Widget buildFilterBox() {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(horizontal: 8.0),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: [
  //         Expanded(child: buildDropdownButton(dropdownValue1, (newValue) {
  //           setState(() => dropdownValue1 = newValue ?? "");
  //           reloadData();
  //
  //         })),
  //         Expanded(child: buildDropdownButton(dropdownValue2, (newValue) {
  //           setState(() => dropdownValue2 = newValue ?? "");
  //           reloadData();
  //
  //         })),
  //         Expanded(child: buildDropdownButton(dropdownValue3, (newValue) {
  //           setState(() => dropdownValue3 = newValue ?? "");
  //           reloadData();
  //
  //         })),
  //       ],
  //     ),
  //   );
  // }

  Widget buildDropdownButton(String dropdownValue, Function(String?) onChanged) {
    return Center( // 使用 Center 小部件使内容居中
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7 / 3, // 70% / 3 的宽度
        child: DropdownButton<String>(
          isExpanded: true,
          value: dropdownValue,
          onChanged: onChanged,
          items: <String>['One', 'Two', 'Three', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          underline: Container(
            height: 1,
            color: Colors.deepPurpleAccent,
          ),
        ),
      ),
    );
  }
  Widget buildFilterBox() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, // 设置背景颜色为白色
          borderRadius: BorderRadius.circular(4.0), // 设置边角圆滑度
          border: Border.all(color: Colors.grey) // 设置边框
      ),
      margin: EdgeInsets.symmetric(horizontal: 8.0), // 设置外边距
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0), // 设置内边距
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // 居中对齐
          children: [
            Expanded(child: buildDropdownButton(dropdownValue1, (newValue) {
              setState(() => dropdownValue1 = newValue ?? "");
            })),
            Expanded(child: buildDropdownButton(dropdownValue2, (newValue) {
              setState(() => dropdownValue2 = newValue ?? "");
            })),
            Expanded(child: buildDropdownButton(dropdownValue3, (newValue) {
              setState(() => dropdownValue3 = newValue ?? "");
            })),
          ],
        ),
      ),
    );
  }

}


