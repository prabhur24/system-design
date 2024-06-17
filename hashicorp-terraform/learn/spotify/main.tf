resource "spotify_playlist" "top_tracks_playlist" {
  name        = "Top Tracks Playlist"
  description = "A playlist of my top tracks"
  public      = false
}

resource "spotify_playlist_track" "top_tracks" {
  playlist_id = spotify_playlist.top_tracks_playlist.id
  track_uris  = data.spotify_top_tracks.user_top_tracks.uris
}

data "spotify_top_tracks" "user_top_tracks" {
  time_range = "medium_term"
}
