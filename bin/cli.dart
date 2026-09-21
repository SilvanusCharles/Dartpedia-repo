class ProductManager {
  // 1. Raw Source List (Simulating incoming database payloads)
  final List<Map<String, dynamic>> _rawProducts = [
    {
      'id': 'p1',
      'title': 'MacBook Pro',
      'price': 1999.99,
      'category': 'Electronics',
      'tags': ['laptop', 'tech', 'apple'],
    },
    {
      'id': 'p2',
      'title': 'Coffee Mug',
      'price': 14.99,
      'category': 'Kitchen',
      'tags': ['mug', 'home'],
    },
    {
      'id': 'p3',
      'title': 'Wireless Mouse',
      'price': 49.99,
      'category': 'Electronics',
      'tags': ['tech', 'mouse'],
    },
    {
      'id': 'p4',
      'title': 'Mechanical Keyboard',
      'price': 120.00,
      'category': 'Electronics',
      'tags': ['tech', 'keyboard', 'apple'],
    },
  ];

  // 2. Extract a unique collection of all available tags across all items
  Set<String> getAllUniqueTags() {
    return _rawProducts
        .expand((product) => product['tags'] as List<String>)
        .toSet();
  }

  // 3. Filter items matching a category, safely converting to a Map lookup by ID
  Map<String, Map<String, dynamic>> getElectronicsInventory() {
    final filtered = _rawProducts.where(
      (product) => product['category'] == 'Electronics',
    );

    // Convert List items into structured Map pairs: { id: fullProductDataMap }
    return Map.fromEntries(filtered.map((p) => MapEntry(p['id'] as String, p)));
  }

  // 4. Calculate total cost using functional reduction pipelines (.fold)
  double computeTotalInventoryValue({required String category}) {
    return _rawProducts
        .where((p) => p['category'] == category)
        .fold(
          0.0,
          (previousSum, item) => previousSum + (item['price'] as double),
        );
  }
}

void main() {
  final manager = ProductManager();

  print('--- All Extracted Unique Tags ---');
  print(manager.getAllUniqueTags());
  // Output: {laptop, tech, apple, mug, home, mouse, keyboard}

  print('\n--- Electronics Mapped by ID ---');
  print(manager.getElectronicsInventory().keys);
  // Output: (p1, p3, p4)

  print('\n--- Total Value of Electronics Portfolio ---');
  print('\$${manager.computeTotalInventoryValue(category: 'Electronics')}');
  // Output: $2169.98
}
