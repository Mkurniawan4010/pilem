class Movie {
  final int id;
  final String title, overview, posterPath, backdropPath, releaseDate;
  final double voteAverage;

  Movie({
    required this.title,
    required this.id,
    required this.overview,
    required this.posterPath,
    required this.backdropPath,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        id: json['id'],
        title: json['title'],
        overview: json['overview'],
        posterPath: json['posterPath'],
        backdropPath: json['backdropPath'],
        releaseDate: json['releaseDate'],
        voteAverage: json['voteAverage']);
  }
}
