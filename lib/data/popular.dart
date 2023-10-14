class ShopItem {
  final String title;
  final String description;
  final String image;
  final double price;
  final bool isLiked;

  ShopItem({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    this.isLiked = false,
  });
}

List<ShopItem> shopItems = [
  ShopItem(
    title: 'Baju T-Shirt Putih',
    image: 'images/tshirt.jpeg',
    description: 'Baju T-Shirt warna putih dengan desain sederhana.',
    price: 19.99,
  ),
  ShopItem(
    title: 'Celana Jeans Biru',
    image: 'images/tshirt.jpeg',
    description: 'Celana jeans warna biru yang nyaman digunakan.',
    price: 34.99,
  ),
  ShopItem(
    title: 'Sepatu Sneakers Hitam',
    image: 'images/sepatunigger.jpg',
    description: 'Sepatu sneakers warna hitam yang stylish.',
    price: 49.99,
  ),
  ShopItem(
    title: 'Topi Baseball Merah',
    image: 'images/topi.jpg',
    description: 'Topi baseball warna merah dengan logo bordir.',
    price: 12.99,
  ),
  ShopItem(
    title: 'Tas Ransel Kulit',
    image: 'images/taskulit.jpg',
    description: 'Tas ransel kulit sintetis yang kuat dan tahan lama.',
    price: 59.99,
  ),
  ShopItem(
    title: 'Jam Tangan Digital',
    image: 'images/jamtangan.jpg',
    description: 'Jam tangan digital dengan fitur canggih.',
    price: 29.99,
  ),
];
