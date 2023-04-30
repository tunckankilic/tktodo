import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tktodo/bloc_folder/blocs.dart';
import 'package:tktodo/pages/tasks_page.dart';
import 'package:tktodo/widgets/app_drawer.dart';

class RecycleBin extends StatefulWidget {
  static const String routeName = "/bin";

  RecycleBin({super.key});

  @override
  State<RecycleBin> createState() => _RecycleBinState();
}

class _RecycleBinState extends State<RecycleBin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: const Text('Recycle Bin'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            )
          ],
        ),
        body: BlocBuilder<TaskBlocBloc, TaskBlocState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [TasksList(tasks: state.removedTasks)],
            );
          },
        ));
  }
}
