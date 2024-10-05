import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final String coffeeName;
  final Function(Map<String, dynamic>) onAddToCart;

  const OrderPage(
      {super.key, required this.coffeeName, required this.onAddToCart});

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int orderCount = 1;
  double sugarAmount = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.coffeeName),
        backgroundColor: const Color(0xFF613613),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Jumlah Pemesanan: $orderCount'),
            Slider(
              value: sugarAmount,
              min: 0,
              max: 20,
              divisions: 20,
              label: '${sugarAmount.toStringAsFixed(1)} gram gula',
              onChanged: (value) {
                setState(() {
                  sugarAmount = value;
                });
              },
            ),
            Text('Gula: ${sugarAmount.toStringAsFixed(1)} gram'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    widget.onAddToCart({
                      'name': widget.coffeeName,
                      'orderCount': orderCount,
                      'sugarAmount': sugarAmount,
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('Keranjang'),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: const Text('Terima kasih telah memesan!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Pesan'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Kembali ke menu
                  },
                  child: const Text('Batal'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
