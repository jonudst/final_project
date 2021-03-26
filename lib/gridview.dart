import 'package:final_project/Components/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:final_project/constants.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final list_item = [
    {
      "name" : "ກະບອງເພັດ",
      "pic"  : "Assets/Images/2.jpg",
      "price":  8000,

    },
    {
      "name" : "ກະບອງເພັດ",
      "pic"  : "Assets/Images/3.jpg",
      "price":  7000,

    },
    {
      "name" : "ກະບອງເພັດ",
      "pic"  : "Assets/Images/4.jpg",
      "price":  9000,

    },
    {
      "name" : "ກະບອງເພັດ",
      "pic"  : "Assets/Images/5.jpg",
      "price":  4000,

    },
    {
      "name" : "ກະບອງເພັດ",
      "pic"  : "Assets/Images/6.jpg",
      "price":  7000,

    },
    {
      "name" : "ຕົ້ນງາຊ້າງ",
      "pic"  : "Assets/Images/7.jpg",
      "price":  10000,

    },
    {
      "name" : "ລີ້ນມັງກອນ",
      "pic"  : "Assets/Images/8.jpg",
      "price":  2000,

    },
    {
      "name" : "ປາມໄຜ່",
      "pic"  : "Assets/Images/9.png",
      "price":  1000,

    },
    {
      "name" : "ອອມເງີນອອມທອງ",
      "pic"  : "Assets/Images/10.jpg",
      "price":  3000,

    },
    {
      "name" : "ຕົ້ນໃບສັກ",
      "pic"  : "Assets/Images/11.png",
      "price":  9000,

    },
    {
      "name" : "Philodendron",
      "pic"  : "Assets/Images/12.jpg",
      "price":  4000,

    },
    {
      "name" : "ລີ້ນມັງກອນ",
      "pic"  : "Assets/Images/13.jpg",
      "price":  4000,

    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: list_item.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
        return product(
          product_name: list_item[index]['name'],
          product_pic: list_item[index]['pic'],
          product_price: list_item[index]['price'],
        );
        });
  }
}
class product extends StatelessWidget {
  final product_name;
  final product_pic;
  final product_price;
  product({
    this.product_name,
    this.product_pic,
    this.product_price,});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: (){},
              child: GridTile(
                footer: Container(
                  color: Colors.green,
                  child: ListTile(

                    trailing: Text(' $product_price ກີບ',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.yellow[600]),),

                    leading: Text(product_name,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
                    ),

                    // title: Text(' $product_price ກີບ',
                    //   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
                    // ),

                  ),
                ),
                child: Image.asset(product_pic,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}

