import 'package:coffee_shop/model.dart';
import 'package:coffee_shop/page_detail.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: 70,
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(219, 193, 180, 128),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
              ),
              child: Row(
                children: [
                  IconButton(onPressed: (() {
                    Navigator.pop(context);
                  }), icon: const Icon(Icons.arrow_back)),
                  Container(
                    width: 112,
                  ),
                  const Text('Coffee Drinks', style: TextStyle(fontWeight: FontWeight.w600),),
                  Container(
                    width: 112,
                  ),
                  IconButton(onPressed: (() {
                    Navigator.pop(context);
                  }), icon: const Icon(Icons.search)),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: listKopi.length,
              itemBuilder: ((context, index) {
              final Kopi kp = listKopi[index];
              return Column(
                children: [
                  Container(
                    width: 350,
                    height: 250,
                    margin: const EdgeInsets.only(bottom: 25, left: 35, right: 20),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => PageDetail(id: kp.id, nama: kp.nama, harga: kp.harga, rating: kp.rating, deskripsi: kp.deskripsi, gambar: kp.gambar))));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(kp.gambar)
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(30))
                                ),
                              ),
                              Column(
                                children: [
                                  Text(kp.harga, style: const TextStyle(fontWeight: FontWeight.w600),),
                                  Text(kp.nama, style: const TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            }))
          ],
        ),
      ),
    );
  }
}