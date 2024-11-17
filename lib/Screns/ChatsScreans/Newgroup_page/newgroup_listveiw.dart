import 'package:flutter/material.dart';
class NewGroupListview
{
  final String Tittle,SubTittle;
  final Image image;

  NewGroupListview(this.Tittle,this.SubTittle,this.image);
}

List Items = [
  NewGroupListview('Abhisjek Jmit','Jai shree ram',Image.asset("assets/dhruv image neww one mc d.jpg")),
  NewGroupListview('Abhisjek Jmit','Jai shree ram',Image.asset("assets/dhruv image neww one mc d.jpg")),
  NewGroupListview('Abhisjek Jmit','Jai shree ram',Image.asset("assets/dhruv image neww one mc d.jpg")),
  NewGroupListview('Abhisjek Jmit','Jai shree ram',Image.asset("assets/dhruv image neww one mc d.jpg")),
];


class RealListViewOne extends StatefulWidget {
  const RealListViewOne({super.key});

  @override
  State<RealListViewOne> createState() => _RealListViewOneState();
}

class _RealListViewOneState extends State<RealListViewOne> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ScrollPhysics(),
      itemCount: Items.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context , int index) {
        ListTile(

        );
      },
    );
  }
}

