import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/components/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Dr.Brijesh Rupar",
      "picture": "assets/doc1.png",
      "education": "BDS",
      "under": "MDS",
      "experience": "22 Years",
      "med": "Government Dental College",
    },
    {
      "name": "Dr.Shikha Gurnani",
      "picture": "assets/doc2.png",
      "education": "MBBS",
      "under": "DNB",
      "experience": "13+ Years",
      "med": "Government Dental College",
    },
    {
      "name": "Dr.Vinaya Chitale",
      "picture": "assets/doc3.png",
      "education": "MBBS",
      "under": "MD",
      "experience": "5+ Years",
      "med": "Government Dental College",
    },
    {
      "name": "Dr.Neeraj Suri",
      "picture": "assets/doc4.png",
      "education": "ENT Surgeon",
      "experience": "8 Years",
      "med": "Government Dental College",
    },
    {
      "name": "Dr.Jain",
      "picture": "assets/doc5.png",
      "education": "MBBS",
      "Under": "DPM",
      "experience": "20 Years",
      "med": "Government Dental College",
    },
    {
      "name": "Dr.Yogesh Kumar",
      "picture": "assets/doc8.png",
      "education": "MBBS",
      "under": "MS",
      "experience": "5 Years",
      "med": "Government Dental College",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pict: product_list[index]['picture'],
            prod_edu: product_list[index]['education'],
            prod_exp: product_list[index]['experience'],
            prod_med: product_list[index]['med'],
            prod_under: product_list[index]['under'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pict;
  final prod_edu;
  final prod_under;
  final prod_exp;
  final prod_med;
  Single_prod({
    this.prod_name,
    this.prod_pict,
    this.prod_edu,
    this.prod_under,
    this.prod_exp,
    this.prod_med,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                        //here we are passing the values of the product to product details page
                        pro_detail_name: prod_name,
                        pro_detail_picture: prod_pict,
                        pro_edu: prod_edu,
                        pro_under: prod_under,
                        pro_exp: prod_exp,
                        pro_med: prod_med,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_pict,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
