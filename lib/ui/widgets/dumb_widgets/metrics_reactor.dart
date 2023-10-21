import 'package:flutter/material.dart';

class MetricsReactor extends StatefulWidget {
  const MetricsReactor({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<MetricsReactor> createState() => _MetricsReactorState();
}

class _MetricsReactorState extends State<MetricsReactor>
    with WidgetsBindingObserver {
  late Size _lastSize;

  @override
  void initState() {
    super.initState();
    _lastSize = View.of(context).physicalSize;
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    setState(() {
      _lastSize = View.of(context).physicalSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
