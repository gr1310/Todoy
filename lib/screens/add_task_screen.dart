import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  // const AddTaskScreen({super.key});

  final Function addTaskCallBack;

  AddTaskScreen(this.addTaskCallBack);

  Widget buildBottomScreen(BuildContext context) {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    String newTaskTitle="";
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextField(
                autofocus: true,
                style: const TextStyle(
                  color: Colors.blueAccent,
                ),
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)),
                ),
                onChanged: (newText){
                  newTaskTitle=newText;
                },
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  // print(newTaskTitle);
                  if(newTaskTitle!="") {
                    addTaskCallBack(newTaskTitle);
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                child: const Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// class AddTaskScreen extends StatefulWidget {
//   const AddTaskScreen({super.key});
//
//   @override
//   State<AddTaskScreen> createState() => _AddTaskScreenState();
// }
//
// class _AddTaskScreenState extends State<AddTaskScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
