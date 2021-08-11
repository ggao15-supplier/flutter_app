import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/bloc_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(1),
      child: Builder(builder: (context) {
        return BlocBuilder(
            bloc: BlocProvider.of<CounterBloc>(context),
            builder: (context, count) {
              return Scaffold(
                appBar: AppBar(
                  title: Text("second"),
                ),
                body: Center(
                  child: Text(
                    "$count",
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
                floatingActionButton: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: FloatingActionButton(
                          onPressed: () {
                            BlocProvider.of<CounterBloc>(context)
                                .add(CounterEvent.increment);
                          },
                          child: Icon(Icons.add),
                        )),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: FloatingActionButton(
                          onPressed: () {
                            BlocProvider.of<CounterBloc>(context)
                                .add(CounterEvent.decrement);
                          },
                          child: Icon(Icons.remove),
                        ))
                  ],
                ),
              );
            });
      }),
    );
  }
}
