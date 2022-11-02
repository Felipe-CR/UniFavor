
class Product{
  final int id;
  final String title, description;
  final List<String> images;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description
  });
}

List<Product> demoProducts = [
  Product(
      id: 1,
      images: [
        "assets/images/Comida6_v2.PNG"
      ],
      title: "Chicharron Dulce",
      price: 5000,
      description: "Chicharron con dulce",
      rating: 4.0,
      isFavourite: false,
      isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Comida10_v2.PNG"
    ],
    title: "Hamburguesa",
    price: 15000,
    description: "Hamburguesa con papas",
    rating: 5.0,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/Comida1_v2.PNG"
    ],
    title: "Granizado de café",
    price: 14000,
    description: "Un granizado de café con un acompañante de su elección",
    rating: 4.5,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/Comida8_v2.PNG"
    ],
    title: "Combo de Café",
    price: 8000,
    description: "Un café con un acompañante de su elección",
    rating: 4.3,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/Comida9_v2.PNG"
    ],
    title: "Bandeja Paisa",
    price: 18000,
    description: "Lleva una porción de arroz, frijoles, una ensalada, chicharron, carne molidad, aguacate, maduro, arepa, chorizo, un vaso de aguapanela",
    rating: 5.0,
    isFavourite: true,
    isPopular: true,
  ),
];