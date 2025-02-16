import 'package:flutter/material.dart';

class List_Tile_Select  extends StatefulWidget {
  const List_Tile_Select({
    super.key,
    required this.FTC,
    required this.FRC,

  });
  final dynamic FTC;
  final dynamic FRC;

  @override
  State<List_Tile_Select> createState() => List_Tile_Select_State();
}

class List_Tile_Select_State extends State<List_Tile_Select> {
  bool isSelectiononMode = false;
  final int listLength = 30;
  late List<bool> _selected;
  //bool _selectAll = false;
  bool _isGridMode = false;
  


  @override
  void initState() {
    super.initState();
    initializeSelection();
  }

  void initializeSelection() {
    _selected = List<bool>.generate(listLength, (_) => false);
  }

  @override
  void dispose() {
    _selected.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        AppBar(
          title: const Text('App scouting'),
          leading: isSelectiononMode
              ? IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                      setState(() {
                        isSelectiononMode = false;
                      });
                      initializeSelection();
                    },)
              : const SizedBox(),
          actions: <Widget>[
              if (_isGridMode)
              IconButton(
                icon: const Icon(Icons.grid_on),
                onPressed: () {
                  setState(() {
                    _isGridMode = false;
                  });
                },)
              else
              IconButton(
                icon: const Icon(Icons.list),
                onPressed: () {
                  setState(() {
                    _isGridMode = true;
                  });
                  },
              ),],
        ),
      body: _isGridMode
          ? widget.FRC 
          : widget.FTC
          
    );}
}