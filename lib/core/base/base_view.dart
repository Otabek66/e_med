import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class BaseView<T> extends StatefulWidget {
  final T? viewModel;
  final Widget Function(BuildContext context, T value)? OnPageBuilder;
  final Function(T model)? onModelReady;
  final VoidCallback? onDispose;

  const  BaseView({
    Key? key, required this.viewModel, required this.OnPageBuilder, this.onModelReady, this.onDispose,
  }) :super(key: key);



  @override
  State<BaseView> createState()=> _BaseViewState();



}

  class _BaseViewState extends State<BaseView> {
    var subscription;
    var internetStatus;

    @override
    void initState() {
    // TODO: implement initState
    super.initState();
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result){
      setState((){
        internetStatus = result;
      });

    });
    if(widget.onModelReady != null)widget.onModelReady!(widget.viewModel);
  }
  @override
  Widget build(BuildContext context) {
    return internetStatus == ConnectivityResult.none ? 
    NoInternetScreen()
    : widget.OnPageBuilder!(context, widget.viewModel);
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if(widget.onDispose != null) widget.onDispose!();
  }
  }

  class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}