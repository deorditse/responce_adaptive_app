class People {
  String title;
  String subtitle;
  String avatar;

  People(this.title, this.subtitle, this.avatar);
}

final List<People> peoples = _products
    .map((e) => People(e["title"], e["subtitle"], e["avatar"]))
    .toList();

final List<Map<String, dynamic>> _products = [
  {
    'title': 'Dmitrii Deorditse 1',
    'subtitle': 'deorditse.d@yandex.ru',
    'avatar': 'assets/avatars/image.png',
  },
  {
    'title': 'Dmitrii Deorditse 2',
    'subtitle': 'deorditse.d@yandex.ru',
    'avatar': 'assets/avatars/image.png',
  },
  {
    'title': 'Dmitrii Deorditse 3',
    'subtitle': 'deorditse.d@yandex.ru',
    'avatar': 'assets/avatars/image.png',
  },
  {
    'title': 'Dmitrii Deorditse 4',
    'subtitle': 'deorditse.d@yandex.ru',
    'avatar': 'assets/avatars/image.png',
  },
  {
    'title': 'Dmitrii Deorditse 5',
    'subtitle': 'deorditse.d@yandex.ru',
    'avatar': 'assets/avatars/image.png',
  },
  {
    'title': 'Dmitrii Deorditse 6',
    'subtitle': 'deorditse.d@yandex.ru',
    'avatar': 'assets/avatars/image.png',
  },
  {
    'title': 'Dmitrii Deorditse',
    'subtitle': 'deorditse.d@yandex.ru',
    'avatar': 'assets/avatars/image.png',
  },
  {
    'title': 'Dmitrii Deorditse',
    'subtitle': 'deorditse.d@yandex.ru',
    'avatar': 'assets/avatars/image.png',
  },
  {
    'title': 'Dmitrii Deorditse',
    'subtitle': 'deorditse.d@yandex.ru',
    'avatar': 'assets/avatars/image.png',
  },
  {
    'title': 'Dmitrii Deorditse',
    'subtitle': 'deorditse.d@yandex.ru',
    'avatar': 'assets/avatars/image.png',
  },
  {
    'title': 'Dmitrii Deorditse',
    'subtitle': 'deorditse.d@yandex.ru',
    'avatar': 'assets/avatars/image.png',
  },
  {
    'title': 'Dmitrii Deorditse',
    'subtitle': 'deorditse.d@yandex.ru',
    'avatar': 'assets/avatars/image.png',
  },
];
