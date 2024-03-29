import 'package:flutter/material.dart';

class Ulscreen6 extends StatefulWidget {
  const Ulscreen6({super.key});

  @override
  State<Ulscreen6> createState() => _Ulscreen6State();
}

class _Ulscreen6State extends State<Ulscreen6> {
  List<Tab> myTab = [
    const Tab(
      child: Text(
        'Products',
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Tab(
      child: Text(
        'Categories',
        style: TextStyle(color: Colors.white),
      ),
    )
  ];
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title:const Text('Catalogue'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions:const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.search_outlined),
            ),
          ],
          bottom: TabBar(tabs: myTab),
        ),
     body: SingleChildScrollView(
          child: Container(
            color: const Color.fromARGB(255, 240, 235, 235),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 0,
                  color: Colors.white,
                ),
                const SizedBox(height: 15),
                list(
                    photo: 'asset/images/download (1).jpg',
                    name: 'RCB Jersey | Women...',
                    price: '₹799'),
                const SizedBox(height: 10),
                list(
                    photo: 'asset/images/pngtree-original-model-folding-t-shirt-prototype-clothing-image_743165.jpg',
                    name: 'MI Jersey | Women ...',
                    price: '₹799'),
                const SizedBox(height: 10),
                list(
                    photo: 'asset/images/istockphoto-95574723-1024x1024.jpg',
                    name: 'CSK Jersey | Women...',
                    price: '₹399'),
                const SizedBox(height: 10),
                list(
                    photo: 'asset/images/tea.png',
                    name: 'RCB Jersey | Men...',
                    price: '₹699'),
                const SizedBox(height: 10),
                list(
                    photo: 'asset/images/istockphoto-675264730-1024x1024.jpg',
                    name: 'MI Jersey | Women...',
                    price: '₹449'),
                const SizedBox(height: 10),
                list(
                    photo: 'asset/images/baby-designer-t-shirt-500x500.webp',
                    name: 'CSK Jersey | Men...',
                    price: '₹599'),
                const SizedBox(height: 10),
                list(
                    photo: 'asset/images/Custom-Children-Short-Sleeve-T-Shirt-with-Print-or-Embroidery-Design-Clothing-Baby-Boys-Fashion-T-Shirt.jpg',
                    name: 'RCB Jersey | Women...',
                    price: '₹1799'),
                const SizedBox(height: 10),
                list(
                    photo: 'asset/images/pngtree-folded-t-shirts-image_740476.jpg',
                    name: 'MI Jersey | Men...',
                    price: '₹1199'),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget list(
      {required String photo, required String name, required String price}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
      ),
      width: 345,
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 90,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .5)),
                child: Image.asset(
                  photo,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 9),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 5),
                  const Text('1 piece'),
                  const SizedBox(height: 5),
                  Text(
                    price,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'In stock',
                    style: TextStyle(
                        color: Color.fromARGB(255, 32, 245, 4),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(Icons.more_vert,
                  ),
                  const SizedBox(height: 25),
                  Switch(
                    activeColor: Colors.blue[700],
                      value: val,
                      onChanged: (value) {
                        val = value;
                      }),
                ],
              ),
            ],
          ),
          const Divider(thickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.share_outlined,),
              SizedBox(width: 8),
              Text('Share product')
            ],
          )
        ],
      ),
    );
  }
}
