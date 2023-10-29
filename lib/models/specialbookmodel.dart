class Specialbookmodel {
  final String image;
  final bool favorite;
  final String price;
  final String title;
  final String subtitle;
  final double rate;
  final int? pages;
  final String? aboutbook;
  Specialbookmodel({
    this.pages,
    this.aboutbook,
    required this.rate,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.image,
    required this.favorite,
  });
}
