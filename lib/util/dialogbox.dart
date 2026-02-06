import 'package:flutter/material.dart';

class Dialogbox extends StatefulWidget {
  final TextEditingController controller;
  final Function(Duration) onsave;
  final VoidCallback oncancel;

  const Dialogbox({
    super.key,
    required this.controller,
    required this.onsave,
    required this.oncancel,
  });

  @override
  State<Dialogbox> createState() => _DialogboxState();
}

class _DialogboxState extends State<Dialogbox> {
  int minutes = 0;
  int hours = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal[50],
      content: SizedBox(
        height: 210,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: widget.controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            Row(
              children: [
                const Text("Set Time: "),
                DropdownButton<int>(
                  value: hours,
                  items:
                      List.generate(6, (index) => index)
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text("$e hr"),
                            ),
                          )
                          .toList(),
                  onChanged: (val) {
                    setState(() {
                      hours = val!;
                    });
                  },
                ),
                DropdownButton<int>(
                  value: minutes,
                  items:
                      List.generate(60, (index) => index)
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text("$e min"),
                            ),
                          )
                          .toList(),
                  onChanged: (val) {
                    setState(() {
                      minutes = val!;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed:
                      () => widget.onsave(
                        Duration(hours: hours, minutes: minutes),
                      ),
                  color: Theme.of(context).primaryColor,
                  child: const Text("Save"),
                ),
                const SizedBox(width: 8),
                MaterialButton(
                  onPressed: widget.oncancel,
                  color: Colors.grey,
                  child: const Text("Cancel"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
