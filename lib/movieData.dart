class MovieImage {
  String url;
  String title;

  MovieImage(this.url, this.title);
}

class Movie {
  String title;
  MovieImage coverImage;
  late List<MovieImage> images; //marked
  String description;

  Movie(this.title, this.coverImage, this.description);
}

List<Movie> movie = [
  Movie(
    "Spider Man",
    MovieImage(
        "https://images.unsplash.com/photo-1635805737707-575885ab0820?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bW92aWUlMjBwb3N0ZXJ8ZW58MHx8MHx8fDA%3D",
        ""),
    "",
  ),
  Movie(
    "Barbie",
    MovieImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxhTpdYx6JLb8F_74c8jUVoj6rt5dzrbODpQ&usqp=CAU",
        ""),
    "",
  ),
  Movie(
    "Aníkúlápó",
    MovieImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWib168xomNa4pWNFoptc2I4OSdREi6lYRHA&usqp=CAU",
        ""),
    "",
  ),
  Movie(
    "Avengers",
    MovieImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPbAKgIcRb7wnzz5aexhNsxupOdn-7orQawg&usqp=CAU",
        ""),
    "",
  ),
];

List<Movie> movies2 = [
  Movie(
    "Castlevania",
    MovieImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8N7bbNoQ4c3l1sf30roKhJ0uI9HhkruokIg&usqp=CAU",
        ""),
    "",
  ),
  Movie(
    "Oppenheimer",
    MovieImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2Eqv4Hh193m7tCyKU5ITlun7GakjXkTOeBg&usqp=CAU",
        ""),
    "",
  ),
  Movie(
    "Onimusha",
    MovieImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYiI10eanscjYaPF5M653dwNPZgIL4BEEoTw&usqp=CAU",
        ""),
    "",
  ),
  Movie(
    "Blue Samuria",
    MovieImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWSsAU1LfbSOmn8OgG0fQ1gTTm7X95RIvIWA&usqp=CAU",
        ""),
    "",
  ),
];

List<Movie> featuredMovies = [
  Movie(
    "Damsel",
    MovieImage(
        "https://nkiri.com/wp-content/uploads/2024/03/damsel-hollywood-movie-200x300.jpg",
        ""),
    "",
  ),
  Movie(
    "",
    MovieImage(
        "https://occ-0-5543-768.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABbTERa8g81W2ZUTrfYPfkWQgJl6ZHtwq6WA95HiPyGQ7UGP51nALdGaVhqZNSpld8X0gf6K3qQPI5hYcjHaPK-Axir1G_n1EidprFzUzo8fqMq6EDEaEtUMBj_CLnmmjTulA.jpg?r=9f0",
        ""),
    "",
  ),
  //https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXO6ZmSgIwk9R3IOtmSlitzy6b3-80x7jnNg&usqp=CAU
  Movie(
    "",
    MovieImage(
        "https://occ-0-5543-768.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABbByOWfFGaF-ja6vDdO5ldH6k3Dt9JL8UVipoC2ruzNEi6JRryp9gKIz5yhzq2kpZ9EvTQdClUwlX_SH4oWDdkaPGG8V1IFJI2cuf7pvrIRbPLwe84flMv4Fli8FmWwcf9Dy.jpg?r=fe1",
        ""),
    "",
  ),
  Movie(
    "",
    MovieImage(
        "https://occ-0-5544-768.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABaUc17bwu5raMhc4wYktZLHE_Y6c8A636jopZr4MhflbuE7m05oWWnAmQ_ojiLxy9XpqDYwL2PvUHoUqWQ8gxtVGyuZCB00rcFcyxasPbfqJRbicikVOLHS7pggKsz7i9O-a.jpg?r=b32",
        ""),
    "",
  ),
];
