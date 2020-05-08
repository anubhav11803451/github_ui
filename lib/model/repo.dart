class Repos {
  String title;
  String content;
  DateTime date;

  Repos({this.title, this.content, this.date});
}

final Map<String, int> categories = {
  'GitHub UI': 1,
  'Facial Recoginition': 2,
  'Reading App': 3,
  'Repo4': 4,
};

final List<Repos> repos = [
  Repos(
    title: 'Facial Recoginition',
    content: 'Deep Learning, Open CV, Python',
    date: DateTime(2020, 5, 5, 8, 30),
  ),
  Repos(
    title: 'GitHub UI',
    content: 'UI is Designed using Flutter',
    date: DateTime(2020, 5, 5, 8, 30),
  ),
];