import 'package:flutter/material.dart';

class GridBuilder extends StatefulWidget {
  const GridBuilder({
    super.key,
    required this.selectedList,
    required this.isSelectiononMode,
    required this.onSelectionChange,
  });

  final bool isSelectiononMode;
  final ValueChanged<bool>? onSelectionChange;
  final List<bool> selectedList;

  @override
  GridBuilderState createState() => GridBuilderState();
}

class GridBuilderState extends State<GridBuilder> {
  void _toggle_1(int index) {
    if (widget.isSelectiononMode) {
      setState(() {
        widget.selectedList[index] = !widget.selectedList[index];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.selectedList.length,
      gridDelegate: 
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (_, int index) {
        return InkWell(
          onTap: () => _toggle_1(index),
          onLongPress: () {
            if (!widget.isSelectiononMode) {
              setState(() {
                widget.selectedList[index] = true;
              });
              widget.onSelectionChange!(true);
            }
          },
          child: GridTile(
            child: Container(
          child: widget.isSelectiononMode
              ? Checkbox(
                onChanged: (bool? x) => _toggle_1(index),
                value: widget.selectedList[index]) 
                : const Icon(Icons.image)
            ),),
          );
      });
    }
}

class ListBuilder extends StatefulWidget {
  const ListBuilder({
    super.key,
    required this.selectedList,
    required this.isSelectiononMode,
    required this.onSelectionChange
  });

  final bool isSelectiononMode;
  final List<bool> selectedList;
  final ValueChanged<bool>? onSelectionChange;

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  void _toggle_2(int index) {
    if (widget.isSelectiononMode) {
      setState(() {
        widget.selectedList[index] = !widget.selectedList[index];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.selectedList.length,
      itemBuilder: (_, int index) {
        return ListTile(
          onTap: () => _toggle_2(index),
          onLongPress: () {
            if (!widget.isSelectiononMode) {
              setState(() {
                widget.selectedList[index] = true;
              });
              widget.onSelectionChange!(true);
            }
          },
          trailing: widget.isSelectiononMode
              ? Checkbox(
                value: widget.selectedList[index],
                onChanged: (bool? x) => _toggle_2(index),
              )
            : const SizedBox.shrink(),
          title: Text('item $index'),
        );
      }
    );
  }
}