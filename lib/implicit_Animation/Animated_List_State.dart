import 'package:flutter/material.dart';

class AnimatedListStateEx extends StatefulWidget {
  const AnimatedListStateEx({Key? key}) : super(key: key);

  @override
  State<AnimatedListStateEx> createState() => _AnimatedListStateExState();
}

class _AnimatedListStateExState extends State<AnimatedListStateEx> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<String> _list = [];

  void _addItem() {
    setState(() {
      _list.insert(0, "NewItem ${_list.length}");
      _listKey.currentState?.insertItem(0);
    });
  }

  void _removeItem( int index) {
    setState(() {
      String removedItems=_list[index];
      _list.removeAt(index);
      _listKey.currentState?.removeItem(index,duration:const Duration(milliseconds: 500),(context, animation) => ListTile(title: Text(removedItems),textColor: Colors.red,));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedList(
        key: _listKey,
        itemBuilder:
            (BuildContext context, int index, Animation<double> animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: Container(
              child: ListTile(
                title: Text(_list[index]),
                trailing: IconButton(
                    onPressed: (){
                      _removeItem(index);
                    }, icon: const Icon(Icons.delete)),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:_addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
