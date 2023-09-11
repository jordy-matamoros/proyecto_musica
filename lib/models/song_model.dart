class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl});

  static List<Song> songs = [
    Song(
      title: 'Titanium',
      description: 'David Guetta ft. Sia',
      url: 'assets/music/Titanium.mp3',
      coverUrl: 'assets/images/Titanium.jpg'
    ),
    Song(
      title: 'Idol',
      description: 'YOASOBI',
      url: 'assets/music/Idol.mp3',
      coverUrl: 'assets/images/Idol.jpg'
    ),
    Song(
      title: 'Gloria',
      description: 'The Midnight',
      url: 'assets/music/Gloria.mp3',
      coverUrl: 'assets/images/Gloria.jpg'
    )
  ];
}
