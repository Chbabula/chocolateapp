import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Menu item model
class MenuItem {
  final String name;
  final String imageUrl;
  final double price;
  bool isInWishlist;

  MenuItem({
    required this.name,
    required this.imageUrl,
    required this.price,
    this.isInWishlist = false,
  });
}

// Category model
class Category {
  final String name;
  final List<MenuItem> items;

  Category({required this.name, required this.items});
}

// Profile model
class UserProfile {
  final String name;
  final String phoneNumber;
  final String address;
  final String email;

  UserProfile({
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.email,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chocolate Shop',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LockScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LockScreen extends StatelessWidget {
  const LockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://media.istockphoto.com/id/923430892/photo/assortment-of-fine-chocolate-candies-white-dark-and-milk-chocolate-sweets-background-copy.webp?b=1&s=170667a&w=0&k=20&c=-Lp1BjX_-OpNVUcq7bFtP23oAc8JVle1gVbe82NeZig=',
              height: 200,
              width: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Text(
              'Chocolate Shop',
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              'Welcome to Chocolate Paradise',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: const Text('Enter'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Category> categories = [
    Category(
      name: 'Chocolate',
      items: [
        MenuItem(
            name: 'Dairy Milk',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLjA9w_7OhuxeJsqVRtCMg0x8g8cC3lIkXtg&s',
            price: 2.99),
        MenuItem(
            name: 'Five Star',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiJfHE6A79grqOz0BVFWokkdqUQAJm9VmOvA&s',
            price: 1.49),
        MenuItem(
            name: 'Milky Bar',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgO7ocGZmEoMXXlzix1tTjf0jNyIl5d5BH2g&s',
            price: 5.99),
        MenuItem(
            name: 'amul chocolates',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSphs2Gwb_GoX-INeH3OB1FTPA9kO39FX5e6w&s',
            price: 9.99),
        MenuItem(
            name: 'chocofusion',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfhgH_qCzXH6RY36oR_IsW49blM-o2a48jpg&s',
            price: 8.99),
        MenuItem(
            name: 'cow chocolate',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgYgwUAm9xPyhuom6hv8EcyDB3ZlyCYg16Yw&s',
            price: 4.99),
        MenuItem(
            name: 'hershey chocolate',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5e2DGMa_q8V-taiN4Ig_rzMIsxOwN3d4HYA&s',
            price: 0.99),
        MenuItem(
            name: 'chocobliss',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNCIyfHBGuDQmAzv1c4bHpZc9Nd3fRY4bDfQ&s',
            price: 7.99),
        MenuItem(
            name: 'chocodelights',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThBneMH00EkxuMZYZ1MpBAPHqBKo4aZVy7bg&s',
            price: 2.99),
        MenuItem(
            name: 'cocoacraft',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjl5P3plBuV1oKO_MqtmzCfLdyieVLZxfUbA&s',
            price: 1.99),
      ],
    ),
    Category(
      name: 'Caramel',
      items: [
        MenuItem(
            name: 'Caramel Crunch',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8f0x1qdad4BOB_l_wgHu-0aauJw7dGr7QCQ&s',
            price: 2.49),
        MenuItem(
            name: 'Caramel Delight',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQrQCMMkYzVZ1JceUHc4fyNMT9dwRf2Dx8jQ&s',
            price: 1.99),
        MenuItem(
            name: 'hard caramel',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu8rZ5ZIehyTJMaUC9GYPYE01IMn-lXvk8gQ&s',
            price: 2.49),
        MenuItem(
            name: 'chewy caramels',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7wSWr4hM2FRE0FXLZbOW3pSdLR7w9aqxhMQ&s',
            price: 2.49),
        MenuItem(
            name: 'sea salt caramels',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8f0x1qdad4BOB_l_wgHu-0aauJw7dGr7QCQ&s',
            price: 2.49),
        MenuItem(
            name: 'paralines caramels',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIfV75CZfpQtDSL_rdMCdH0spsbPWPpWeapw&s',
            price: 9.49),
        MenuItem(
            name: 'peanut brittle caramels',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqDO0clEl_2vq9MOix92jGy7-iZ8r7c5Pgww&s',
            price: 6.49),
        MenuItem(
            name: 'sweet chewy caramels',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm59RNw2NDfKkPPlhDRVUVX8n2c9Lr0bzqbA&s',
            price: 7.49),
        MenuItem(
            name: 'tangy taffy caramels',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXdQv5M8xRDoDbeZWbgyTDb4BgbKz1yvhz0w&s',
            price: 2.49),
        MenuItem(
            name: 'golden honey caramels',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6X8SMH2PlZCDa3ArxnvAzjPMLDEujFLZ2yw&s',
            price: 8.49),
      ],
    ),
    Category(
      name: 'Nuts',
      items: [
        MenuItem(
            name: 'Nutty Delight',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk0Jmp2zWc7mQqZYNRAz3aHTENzZYNOe8E2A&s',
            price: 3.99),
        MenuItem(
            name: 'Nutty Crunch',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM-NyovbDpKwZ36V4jQ-URfaOtWsGd6WTj_g&s',
            price: 2.99),
        MenuItem(
            name: 'Nutty Surprise',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5PKUOwmZPaK9TbL21-SImP4Z9WmNc4gW2Mw&s',
            price: 3.49),
        MenuItem(
            name: 'choco nuts',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2r8ZkW9E_j5wm98Zly72y-COKBu0ht4RQfA&s',
            price: 2.99),
        MenuItem(
            name: 'crunchy hazelnuts',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_XtTDh5_EcFwfl43X70uE7mLB1V-5kzF3NQ&s',
            price: 1.99),
        MenuItem(
            name: 'delightful almonds',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR2XJ5ry6NgZtPzix41a3R8c1UEx0E-yZgdQ&s',
            price: 5.49),
        MenuItem(
            name: 'pecan pralines',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlZ6_3Vhy_UMkaWzw6yG58MHECqBUbfy8nOA&s',
            price: 8.49),
        MenuItem(
            name: 'toffee almonds',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQal8I6Hh5XvTZdJWwJm5jjGJ2hpo5GVjjS0A&s',
            price: 4.49),
        MenuItem(
            name: 'hazelnut clusters',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4q06DJHlb6IuAwZBzbfZynOudNNcL8q9AZg&s',
            price: 9.49),
        MenuItem(
            name: 'pecan caramel clusters',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj5HjqbffjOVZC6pjjb8JMO3mM_RRWK2Cv3w&s',
            price: 8.49),
      ],
    ),
  ];

  UserProfile userProfile = UserProfile(
    name: 'John Doe',
    phoneNumber: '+1 234 567 890',
    address: '123 Main St, City, Country',
    email: 'john.doe@example.com',
  );

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chocolate Shop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(profile: userProfile),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? Colors.brown
                          : Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        categories[index].name,
                        style: TextStyle(
                          color: currentIndex == index
                              ? Colors.white
                              : Colors.brown,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 4,
              ),
              itemCount: categories[currentIndex].items.length,
              itemBuilder: (context, index) {
                final item = categories[currentIndex].items[index];
                return Card(
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$${item.price.toStringAsFixed(2)}',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: Icon(
                                  item.isInWishlist
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: item.isInWishlist
                                      ? Colors.red
                                      : Colors.grey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    item.isInWishlist = !item.isInWishlist;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final UserProfile profile;

  const ProfileScreen({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${profile.name}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Phone: ${profile.phoneNumber}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Address: ${profile.address}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Email: ${profile.email}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
