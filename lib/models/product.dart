class Product {
  final int id;
  final String title;
  final double price;
  final String imageUrl;
  final String description;
  final Map<String, String> specifications;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.specifications,
  });
}

// Global Sepet Listesi (Basit State Simülasyonu)
List<Product> cartItems = [];

final List<Product> sampleProducts = [
  Product(
    id: 1,
    title: 'AirPods Pro (2nd Gen)',
    price: 249.0,
    imageUrl: 'https://images.unsplash.com/photo-1600294037681-c80b4cb5b434?w=500',
    description: 'Aktif gürültü engelleme ve şeffaf mod özellikli kablosuz kulaklık.',
    specifications: {'Marka': 'Apple', 'Bağlantı': 'Bluetooth 5.3', 'Pil Ömrü': '6 Saat', 'Garanti': '2 Yıl'},
  ),
  Product(
    id: 2,
    title: 'HomePod Mini',
    price: 99.0,
    imageUrl: 'https://images.unsplash.com/photo-1543512214-318c7553f230?w=500',
    description: 'Odayı dolduran yüksek kaliteli ses sunan akıllı hoparlör.',
    specifications: {'Marka': 'Apple', 'Güç': '20W', 'Ses': '360 Derece', 'Garanti': '2 Yıl'},
  ),
  Product(
    id: 3,
    title: 'MacBook Pro 14"',
    price: 1999.0,
    imageUrl: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=500',
    description: 'M3 işlemci ile profesyonel iş yükleri için tasarlandı.',
    specifications: {'Ekran': '14.2 inç', 'RAM': '16 GB', 'Depolama': '512 GB SSD', 'İşlemci': 'M3 Pro'},
  ),
  Product(
    id: 4,
    title: 'iPad Air 5. Nesil',
    price: 599.0,
    imageUrl: 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=500',
    description: 'M1 çipli, Liquid Retina ekranlı güçlü ve hafif tablet.',
    specifications: {'Marka': 'Apple', 'Ekran': '10.9 inç', 'Depolama': '64 GB', 'Ağırlık': '461g'},
  ),
  Product(
    id: 5,
    title: 'Apple Watch Series 9',
    price: 399.0,
    imageUrl: 'https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?w=500',
    description: 'Gelişmiş sağlık takibi ve parlak ekranlı akıllı saat.',
    specifications: {'Kasa Boyutu': '45mm', 'Ekran': 'OLED', 'Su Dayanıklılığı': '50 Metre', 'Kordon': 'Spor'},
  ),
  Product(
    id: 6,
    title: 'Sony WH-1000XM5',
    price: 349.0,
    imageUrl: 'https://images.unsplash.com/photo-1546435770-a3e426bf472b?w=500',
    description: 'Sektör lideri gürültü engellemeli kulak üstü kulaklık.',
    specifications: {'Marka': 'Sony', 'Pil Ömrü': '30 Saat', 'Şarj': 'Type-C', 'Ağırlık': '250g'},
  ),
  Product(
    id: 7,
    title: 'Logitech MX Master 3S',
    price: 99.0,
    imageUrl: 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=500',
    description: 'Ergonomik ve sessiz tıklamalı kablosuz profesyonel fare.',
    specifications: {'DPI': '8000', 'Bağlantı': 'Bluetooth / Unifying', 'Şarj': 'Type-C', 'Tuş Sayısı': '7'},
  ),
  Product(
    id: 8,
    title: 'Mekanik Klavye Keychron K2',
    price: 119.0,
    imageUrl: 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=500',
    description: 'Kablosuz, RGB aydınlatmalı mekanik klavye.',
    specifications: {'Switch': 'Gateron Brown', 'Tuş Düzeni': '%75', 'Batarya': '4000 mAh', 'Bağlantı': 'Bluetooth / Kablolu'},
  ),
  Product(
    id: 9,
    title: 'Samsung Odyssey G7 Monitor',
    price: 699.0,
    imageUrl: 'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=500',
    description: '240Hz yenileme hızına sahip kavisli oyuncu monitörü.',
    specifications: {'Boyut': '27 inç', 'Çözünürlük': '2560x1440', 'Yenileme': '240Hz', 'Panel': 'VA'},
  ),
  Product(
    id: 10,
    title: 'Anker PowerBank 20000mAh',
    price: 49.0,
    imageUrl: 'https://images.unsplash.com/photo-1609592424074-124b819f71c4?w=500',
    description: 'Hızlı şarj destekli yüksek kapasiteli taşınabilir batarya.',
    specifications: {'Kapasite': '20000 mAh', 'Çıkış Gücü': '22.5W', 'Portlar': '2x USB, 1x Type-C', 'Ağırlık': '350g'},
  ),
  Product(
    id: 11,
    title: 'Dell XPS 13 Laptop',
    price: 1299.0,
    imageUrl: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=500',
    description: 'İnce ve şık tasarımlı ultrabook bilgisayar.',
    specifications: {'İşlemci': 'Intel i7', 'RAM': '16 GB', 'Ekran': '13.4 inç FHD+', 'Ağırlık': '1.17 kg'},
  ),
  Product(
    id: 12,
    title: 'Canon EOS R6 Kamera',
    price: 2299.0,
    imageUrl: 'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500',
    description: 'Profesyonel fotoğraf ve 4K video çekim aynasız kamera.',
    specifications: {'Sensör': 'Full Frame', 'Çözünürlük': '20.1 MP', 'Video': '4K 60fps', 'Bağlantı': 'Wi-Fi / Bluetooth'},
  ),
  Product(
    id: 13,
    title: 'Kindle Paperwhite',
    price: 139.0,
    imageUrl: 'https://images.unsplash.com/photo-1592496001020-d31bd830651f?w=500',
    description: 'Suya dayanıklı, ayarlanabilir sıcak ışıklı e-kitap okuyucu.',
    specifications: {'Ekran': '6.8 inç E-Ink', 'Depolama': '16 GB', 'Pil Ömrü': '10 Hafta', 'Su Geçirmezlik': 'IPX8'},
  ),
  Product(
    id: 14,
    title: 'JBL Flip 6 Bluetooth Hoparlör',
    price: 129.0,
    imageUrl: 'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=500',
    description: 'Güçlü bas sesleri sunan, suya dayanıklı taşınabilir hoparlör.',
    specifications: {'Ses Gücü': '30W RMS', 'Pil Ömrü': '12 Saat', 'Koruma': 'IP67 Su/Toz', 'Bağlantı': 'Bluetooth 5.1'},
  ),
  Product(
    id: 15,
    title: 'GoPro HERO12 Black',
    price: 399.0,
    imageUrl: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=500',
    description: 'Aşırı sporlar ve aksiyon çekimleri için 5.3K video kamera.',
    specifications: {'Video': '5.3K 60fps', 'Fotoğraf': '27 MP', 'Su Geçirmezlik': '10 Metre', 'Stabilizasyon': 'HyperSmooth 6.0'},
  ),
];