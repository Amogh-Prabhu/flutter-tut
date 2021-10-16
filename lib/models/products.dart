class CatalogModel {
  static final items = [
    Items(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image:
          "https://www.reliancedigital.in/medias/Apple-12-Pro-Max-Smartphones-491901573-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wxMjU2NDd8aW1hZ2UvanBlZ3xpbWFnZXMvaDRhL2gzMy85NDA3ODQ0MDI0MzUwLmpwZ3w1OWRmNWM5ZmQwZThlNmI0YmVhZjJhNWMwOGE1NzYyMzliZmQzNDBjNGY4Y2E0N2M0YTg0OWExMGM5ZWMyOWQ3",
    ),
  ];
}

class Items {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
