import 'package:flutter/material.dart';
import 'package:flutter_fast_track/core.dart';

class ProductDailyController extends State<ProductDailyView>
    implements MvcController {
  static late ProductDailyController instance;
  late ProductDailyView view;

  @override
  void initState() {
    instance = this;
    loadUsers();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  List users = [];
  loadUsers() async {
    users = await UserService.getUsers();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
