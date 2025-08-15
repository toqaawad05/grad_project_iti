import 'package:flutter/material.dart';
import 'package:grad_project_iti/screens/services/profile_screen.dart';
import 'package:grad_project_iti/themes/app_theme.dart';
import 'package:grad_project_iti/widgets/search_bar.dart' hide SearchBar;
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  String _searchQuery = "";

  final List<Map<String, String>> categories = [
    {"name": "All"},
    {"name": "Skincare"},
    {"name": "Makeup"},
    {"name": "Haircare"},
    {"name": "Body"},
  ];

  final List<Map<String, String>> allProducts = [
    {
      "title": "Vitamin C Serum",
      "brand": "La Roche-Posay",
      "price": "\$25",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.yQJ8TpuicDQy_esjYdyeCAAAAA?r=0&w=417&h=626&rs=1&pid=ImgDetMain&o=7&rm=3"
    },
    {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$30",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP._i3v0AE5o2ijVOx7VJajHwHaFj?r=0&pid=ImgDet&w=186&h=139&c=7&dpr=1.4&o=7&rm=3"
    },
    {
      "title": "Moisturizing Cream",
      "brand": "CeraVe",
      "price": "\$20",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.MSCpWSuuemEqFy5b971mNQHaFP?r=0&pid=ImgDet&w=186&h=131&c=7&dpr=1.4&o=7&rm=3"
    },
    {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$35",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.dD7NW9wZ-axo3R8uyKK9DQHaMW?r=0&pid=ImgDet&w=186&h=309&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$60",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.NgQzdZFdQ2IT_Y8RweyBwAHaHa?r=0&pid=ImgDet&w=186&h=186&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$70",
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.8c4FJzhgN2DfiM_ME0oQlwHaJ4?r=0&pid=ImgDet&w=186&h=247&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$10",
      "image":
          "https://tse3.mm.bing.net/th/id/OIP.wTIamb1gQ793wnr0iMM6igHaE8?r=0&pid=ImgDet&w=186&h=124&c=7&dpr=1.4&o=7&rm=3"
    },
      {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$34",
      "image":
          "https://tse3.mm.bing.net/th/id/OIP.wTIamb1gQ793wnr0iMM6igHaE8?r=0&pid=ImgDet&w=186&h=124&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$98",
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.fz1CK-DjN1WeEiQ9t7Z_JAHaJz?r=0&pid=ImgDet&w=186&h=246&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$80",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.IetSE3EL_XHp1wAPalKrsQHaD4?r=0&pid=ImgDet&w=186&h=97&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$50",
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.EXmhpkTtJNPYJuhAaxUrXQHaE8?r=0&pid=ImgDet&w=186&h=124&c=7&dpr=1.4&o=7&rm=3"
    },
      {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$54",
      "image":
          "https://tse3.mm.bing.net/th/id/OIP.mKgy0CheUHfjLYECQEo1EwHaJC?r=0&pid=ImgDet&w=186&h=227&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$74",
      "image":
          "https://tse1.mm.bing.net/th/id/OIP.FkqVtcZ3wY3VgOkWSTiWawHaHa?r=0&pid=ImgDet&w=186&h=186&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$19",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.icS3u_oy70OfqVYueEYMCAHaHq?r=0&pid=ImgDet&w=186&h=192&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "Vitamin C Serum",
      "brand": "La Roche-Posay",
      "price": "\$25",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.yQJ8TpuicDQy_esjYdyeCAAAAA?r=0&w=417&h=626&rs=1&pid=ImgDetMain&o=7&rm=3"
    },
    {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$43",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP._i3v0AE5o2ijVOx7VJajHwHaFj?r=0&pid=ImgDet&w=186&h=139&c=7&dpr=1.4&o=7&rm=3"
    },
    {
      "title": "Moisturizing Cream",
      "brand": "CeraVe",
      "price": "\$27",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.MSCpWSuuemEqFy5b971mNQHaFP?r=0&pid=ImgDet&w=186&h=131&c=7&dpr=1.4&o=7&rm=3"
    },
    {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$62",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.dD7NW9wZ-axo3R8uyKK9DQHaMW?r=0&pid=ImgDet&w=186&h=309&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$37",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.NgQzdZFdQ2IT_Y8RweyBwAHaHa?r=0&pid=ImgDet&w=186&h=186&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$46",
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.8c4FJzhgN2DfiM_ME0oQlwHaJ4?r=0&pid=ImgDet&w=186&h=247&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$80",
      "image":
          "https://tse3.mm.bing.net/th/id/OIP.wTIamb1gQ793wnr0iMM6igHaE8?r=0&pid=ImgDet&w=186&h=124&c=7&dpr=1.4&o=7&rm=3"
    },
      {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$49",
      "image":
          "https://tse3.mm.bing.net/th/id/OIP.wTIamb1gQ793wnr0iMM6igHaE8?r=0&pid=ImgDet&w=186&h=124&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$40",
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.fz1CK-DjN1WeEiQ9t7Z_JAHaJz?r=0&pid=ImgDet&w=186&h=246&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$55",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.IetSE3EL_XHp1wAPalKrsQHaD4?r=0&pid=ImgDet&w=186&h=97&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$30",
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.EXmhpkTtJNPYJuhAaxUrXQHaE8?r=0&pid=ImgDet&w=186&h=124&c=7&dpr=1.4&o=7&rm=3"
    },
      {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$18",
      "image":
          "https://tse3.mm.bing.net/th/id/OIP.mKgy0CheUHfjLYECQEo1EwHaJC?r=0&pid=ImgDet&w=186&h=227&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$61",
      "image":
          "https://tse1.mm.bing.net/th/id/OIP.FkqVtcZ3wY3VgOkWSTiWawHaHa?r=0&pid=ImgDet&w=186&h=186&c=7&dpr=1.4&o=7&rm=3"
    },
     {
      "title": "SPF 50+ Sunscreen",
      "brand": "Supergoop",
      "price": "\$48",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.icS3u_oy70OfqVYueEYMCAHaHq?r=0&pid=ImgDet&w=186&h=192&c=7&dpr=1.4&o=7&rm=3"
    },
  ];


  List<Map<String, String>> get filteredProducts {
    if (_searchQuery.isEmpty) return allProducts;
    return allProducts
        .where((p) =>
            p['title']!.toLowerCase().contains(_searchQuery.toLowerCase()) ||
            p['brand']!.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();
  }

  void _onItemTapped(int index) async {
    setState(() => _selectedIndex = index);
    if (index == 2) {
      final prefs = await SharedPreferences.getInstance();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(
            name: prefs.getString('name') ?? '',
            email: prefs.getString('email') ?? '',
            imageUrl: prefs.getString('imageUrl') ?? 'https://i.pravatar.cc/300',
          ),
        ),
      );
    }
  }

  void _showProductDetails(Map<String, String> product) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.isabelline,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(product['image']!,
                  height: 150, fit: BoxFit.cover),
            ),
            SizedBox(height: 12),
            Text(product['title']!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text(product['brand']!, style: TextStyle(color: Colors.black54)),
            SizedBox(height: 8),
            Text(product['price']!,
                style: TextStyle(color: Colors.green, fontSize: 16)),
            SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
              label: Text("Add to Cart"),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.platinum,
      appBar: AppBar(
        title: Text("Welcome back, Jessica 👋"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SearchBar(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: categories.length,
              separatorBuilder: (_, __) => SizedBox(width: 8),
              itemBuilder: (_, index) => Chip(
                label: Text(categories[index]['name']!),
                backgroundColor: AppColors.timberwolf,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                itemCount: filteredProducts.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  final product = filteredProducts[index];
                  return GestureDetector(
                    onTap: () => _showProductDetails(product),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.bone,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 4)
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(12)),
                            child: Image.network(
                              product['image']!,
                              height: 140,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) => Container(
                                height: 140,
                                color: Colors.grey[300],
                                child: Icon(Icons.broken_image, size: 50),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(product['brand']!,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 4),
                                Text(product['title']!,
                                    style: TextStyle(color: Colors.black54)),
                                SizedBox(height: 8),
                                Text(product['price']!,
                                    style: TextStyle(color: Colors.green)),
                                SizedBox(height: 8),
                                ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.shopping_cart, size: 16),
                                  label: Text("Buy"),
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(double.infinity, 36),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.desertSand,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Main"),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner), label: "Scan"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
