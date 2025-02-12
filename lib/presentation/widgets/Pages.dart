import 'package:app_mobile/presentation/widgets/Elements/PageIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Pages extends StatefulWidget{
  const Pages({
    super.key,
    required this.Matches,
    required this.Pits,
    });

    final dynamic Matches;
    final dynamic Pits;



  @override
  State<Pages> createState() => _PageView();
}

class _PageView extends State<Pages>
    with TickerProviderStateMixin {
      late PageController _pageController;
      late TabController _tabController;
      int _currentPageIndex = 0;
      
      
      
      @override
      void initState() {
        super.initState();
        _pageController = PageController();
        _tabController = TabController(length: 3, vsync: this);
      }

      @override
      void  dispose() {
        super.dispose();
        _pageController.dispose();
        _tabController.dispose();
      }

      @override
  Widget build(BuildContext context) {
    //final TextTheme textTheme = Theme.of(context).textTheme;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        PageView(
          controller: _pageController,
          onPageChanged: _handlePageViewChanged,
          children: <Widget>[
            widget.Matches,
            widget.Pits,
          ],
        ),
        PageIndicator(
          tabController: _tabController,
          currentPageIndex: _currentPageIndex,
          onUpdateCurrentPageIndex: _updateCurrentPageIndex,
          isOnDesktopAndWeb: _isOnDesktopAndWeb,
        )
      ],
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    if (!_isOnDesktopAndWeb) {
      return;
    }
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
  
  bool get _isOnDesktopAndWeb {
    if (kIsWeb) {
      return true;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return true;
      case TargetPlatform.android:
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
        return false;
    }
  }
}