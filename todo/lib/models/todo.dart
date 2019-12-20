class Todo {
  Todo({
    this.id,
    this.title,
    this.description,
    this.checked,
    this.priority,
    this.createdAt,
  });

  final String id;
  final String title;
  final String description;
  final bool checked;
  final int priority;
  final DateTime createdAt;

  Todo.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        title = data['title'],
        description = data['description'],
        checked = data['checked'],
        priority = data['priority'],
        createdAt = data['createdAt'];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        'description': description,
        'checked': checked,
        'priority': priority,
        'createdAt': createdAt
      };
}
