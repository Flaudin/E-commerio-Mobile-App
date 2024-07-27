class Product {
  String title;
  String img;
  String description;
  double price;
  double rating;
  String category;
  bool isCart;

  Product(
      {required this.title,
      required this.img,
      required this.description,
      required this.price,
      required this.rating,
      required this.category,
      required this.isCart});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        title: json['title'],
        img: json['img'],
        description: json['description'],
        price: json['price'],
        rating: json['rating'],
        category: json['category'],
        isCart: json['isCart']);
  }
}

List<Product> products = [
  Product(
      title: "Wireless Headphones",
      img: "https://example.com/images/wireless_headphones.jpg",
      description:
          "High-quality wireless headphones with noise-cancelling feature and long battery life.",
      price: 59.99,
      rating: 4.5,
      category: "Electronics",
      isCart: true),
  Product(
      title: "Smartwatch",
      img: "https://example.com/images/smartwatch.jpg",
      description:
          "Stylish smartwatch with heart rate monitor, GPS, and customizable watch faces.",
      price: 129.99,
      rating: 4.7,
      category: "Wearables",
      isCart: true),
  Product(
      title: "Electric Toothbrush",
      img: "https://example.com/images/electric_toothbrush.jpg",
      description:
          "Rechargeable electric toothbrush with multiple cleaning modes and a timer.",
      price: 39.99,
      rating: 4.3,
      category: "Health & Personal Care",
      isCart: true),
  Product(
      title: "Digital Camera",
      img: "https://example.com/images/digital_camera.jpg",
      description:
          "High-resolution digital camera with optical zoom, image stabilization, and various shooting modes.",
      price: 299.99,
      rating: 4.4,
      category: "Electronics",
      isCart: false),
  Product(
      title: "Laptop Backpack",
      img: "https://example.com/images/laptop_backpack.jpg",
      description:
          "Durable backpack with padded compartments for laptops, tablets, and accessories.",
      price: 49.99,
      rating: 4.6,
      category: "Fashion & Accessories",
      isCart: false),
  Product(
      title: "Gaming Mouse",
      img: "https://example.com/images/gaming_mouse.jpg",
      description:
          "Ergonomic gaming mouse with customizable buttons, high DPI, and RGB lighting.",
      price: 79.99,
      rating: 4.8,
      category: "Electronics",
      isCart: false),
  Product(
      title: "Fitness Tracker",
      img: "https://example.com/images/fitness_tracker.jpg",
      description:
          "Activity tracker with heart rate monitoring, step counting, and sleep tracking.",
      price: 69.99,
      rating: 4.3,
      category: "Electronics",
      isCart: false),
  Product(
      title: "Coffee Maker",
      img: "https://example.com/images/coffee_maker.jpg",
      description:
          "Programmable coffee maker with brew strength control and auto shut-off feature.",
      price: 79.99,
      rating: 4.5,
      category: "Kitchen & Dining",
      isCart: false),
  Product(
      title: "Robot Vacuum Cleaner",
      img: "https://example.com/images/robot_vacuum.jpg",
      description:
          "Smart vacuum cleaner with mapping technology, scheduling, and app control.",
      price: 249.99,
      rating: 4.6,
      category: "Home Appliances",
      isCart: false),
  Product(
      title: "External Hard Drive",
      img: "https://example.com/images/external_hard_drive.jpg",
      description:
          "High-capacity external hard drive for storing files, photos, and videos.",
      price: 79.99,
      rating: 4.4,
      category: "Electronics",
      isCart: false),
  Product(
      title: "Wireless Gaming Headset",
      img: "https://example.com/images/gaming_headset.jpg",
      description:
          "Immersive gaming headset with surround sound, mic monitoring, and long battery life.",
      price: 99.99,
      rating: 4.7,
      category: "Electronics",
      isCart: false),
  Product(
      title: "Yoga Mat",
      img: "https://example.com/images/yoga_mat.jpg",
      description:
          "Non-slip yoga mat with cushioning for comfort during workouts.",
      price: 29.99,
      rating: 4.5,
      category: "Sports & Outdoors",
      isCart: false),
  Product(
      title: "Cookware Set",
      img: "https://example.com/images/cookware_set.jpg",
      description:
          "Complete cookware set with non-stick pans, pots, and utensils.",
      price: 99.99,
      rating: 4.6,
      category: "Kitchen & Dining",
      isCart: false),
  Product(
      title: "Wireless Charging Pad",
      img: "https://example.com/images/charging_pad.jpg",
      description:
          "Qi-compatible wireless charging pad for smartphones and other devices.",
      price: 19.99,
      rating: 4.3,
      category: "Electronics",
      isCart: false),
  Product(
      title: "Resistance Bands Set",
      img: "https://example.com/images/resistance_bands.jpg",
      description:
          "Set of resistance bands for strength training and physical therapy exercises.",
      price: 24.99,
      rating: 4.7,
      category: "Sports & Outdoors",
      isCart: false),
  Product(
      title: "Digital Drawing Tablet",
      img: "https://example.com/images/drawing_tablet.jpg",
      description:
          "Graphic drawing tablet with pressure sensitivity and customizable shortcut keys.",
      price: 129.99,
      rating: 4.4,
      category: "Electronics",
      isCart: false),
  Product(
      title: "Electric Toothbrush",
      img: "https://example.com/images/toothbrush.jpg",
      description:
          "Sonic electric toothbrush with multiple brushing modes and timer.",
      price: 49.99,
      rating: 4.6,
      category: "Health & Personal Care",
      isCart: false),
  Product(
      title: "Air Fryer",
      img: "https://example.com/images/air_fryer.jpg",
      description:
          "Oil-less air fryer for healthier frying, roasting, and baking.",
      price: 89.99,
      rating: 4.5,
      category: "Kitchen & Dining",
      isCart: false),
  Product(
      title: "Bluetooth Earbuds",
      img: "https://example.com/images/bluetooth_earbuds.jpg",
      description:
          "True wireless earbuds with sweat resistance and immersive sound.",
      price: 49.99,
      rating: 4.4,
      category: "Electronics",
      isCart: false),
  Product(
      title: "Smart Thermostat",
      img: "https://example.com/images/smart_thermostat.jpg",
      description:
          "Wi-Fi enabled thermostat with energy-saving features and remote control via app.",
      price: 129.99,
      rating: 4.7,
      category: "Home Appliances",
      isCart: false),
  Product(
      title: "Electric Kettle",
      img: "https://example.com/images/electric_kettle.jpg",
      description:
          "Fast-boiling electric kettle with temperature control and auto shut-off.",
      price: 34.99,
      rating: 4.3,
      category: "Kitchen & Dining",
      isCart: false),
];
