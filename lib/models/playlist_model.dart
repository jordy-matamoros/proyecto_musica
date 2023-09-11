import 'song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({required this.title, required this.songs, required this.imageUrl});

  static List<Playlist> playlists = [
    Playlist(
      title: 'Playlist 1', 
      songs: Song.songs, 
      imageUrl: 'https://marketplace.canva.com/EAFiWyXAmU0/2/0/1600w/canva-pink-cyan-black-neon-tropical-summer-playlist-cover--Qh_WtmiC5c.jpg'
      ),
      Playlist(
      title: 'Playlist 2', 
      songs: Song.songs, 
      imageUrl: 'https://marketplace.canva.com/EAFiWyXAmU0/2/0/1600w/canva-pink-cyan-black-neon-tropical-summer-playlist-cover--Qh_WtmiC5c.jpg'
      ),
      Playlist(
      title: 'Playlist 3', 
      songs: Song.songs, 
      imageUrl: 'https://marketplace.canva.com/EAFiWyXAmU0/2/0/1600w/canva-pink-cyan-black-neon-tropical-summer-playlist-cover--Qh_WtmiC5c.jpg'
      ),
  ];
}
