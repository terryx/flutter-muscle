class Repo {
  const Repo({
    this.id,
    this.name,
    this.htmlURL,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final int id;
  final String name;
  final String htmlURL;
  final String description;
  final String createdAt;
  final String updatedAt;

  Repo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        htmlURL = json['htmlURL'],
        description = json['description'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'];
}
