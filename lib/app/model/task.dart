class Task {
  Task(this.title, {this.done = false});

  // Task.fromJson(Map<String, dynamic> json) {
  //   title = json ['title'];
  //   done = json[done];
  // }

  final String title;
  bool done;

  // Map<String, dynamic> toJson() {
  //   return {
  //     'title': title,
  //     'done': done
  //   };
  // }
  
}