import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grad_project_iti/models/product_model.dart';


class FirebaseService {
  static final FirebaseService _instance = FirebaseService._internal();
  factory FirebaseService() => _instance;
  FirebaseService._internal();

  static Future<void> init() async {
    // أي إعدادات إضافية لو احتاجتيها
  }

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Product>> productsStream({String? category}) {
    Query q = _db.collection('products');
    if (category != null && category.isNotEmpty) {
      q = q.where('category', isEqualTo: category);
    }
    return q.snapshots().map(
      (snap) => snap.docs
          .map((d) => Product.fromMap(d.id, d.data() as Map<String, dynamic>))
          .toList(),
    );
  }

  Stream<List<Map<String, dynamic>>> articlesStream() {
    return _db.collection('articles').snapshots().map(
      (snap) => snap.docs
          .map((d) => {'id': d.id, ...d.data()})
          .toList(),
    );
  }
}
