import 'package:flutter/material.dart';

import 'package:app_menucircular_bakapp/src/widgets/flow_widget.dart';

class FlowButtonWidget extends StatefulWidget {
  @override
  State<FlowButtonWidget> createState() => _FlowButtonWidgetState();
}

class _FlowButtonWidgetState extends State<FlowButtonWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animation;
  final menuIsOpen = ValueNotifier<bool>(false);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    animation.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  toggleMenu() {
    menuIsOpen.value ? animation.reverse() : animation.forward();
    menuIsOpen.value = !menuIsOpen.value;
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FabVerticalDelegate(animation: animation),
      clipBehavior: Clip.none,
      children: [
        FloatingActionButton(
          heroTag: '1',
          elevation: 0,
          backgroundColor: Colors.orange,
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: animation,
          ),
          onPressed: () => toggleMenu(),
        ),
        FloatingActionButton(
          heroTag: '2',
          elevation: 0,
          backgroundColor: Colors.orange,
          child: const Icon(Icons.photo_camera_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}
