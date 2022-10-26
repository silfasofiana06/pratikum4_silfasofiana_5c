import 'package:flutter/material.dart';

class PageDetail extends StatelessWidget {
  const PageDetail({super.key, required this.id, required this.nama, required this.harga, required this.rating, required this.deskripsi, required this.gambar});
  final String id;
  final String nama;
  final String harga;
  final String rating;
  final String deskripsi;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(gambar)
                )
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(nama, style: const TextStyle(fontWeight: FontWeight.w600)),
                          Row(
                            children: [
                              const Text('★'),
                              Text(rating),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(harga)
                        ],
                      )
                    ],
                  ),
                  Text(deskripsi)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}