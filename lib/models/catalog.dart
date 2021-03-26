class CataLogModel {
  static final items = [
    Item(
        id: 1,
        name: "Iphone 12 Pro",
        desc: "Iphone 12th generation of Appple used A13biotonic chipset",
        price: 999,
        color: "#33505a",
        image:
            "https://www.reliancedigital.in/medias/Apple-12-Pro-Smartphones-491901561-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wxMjU0MDV8aW1hZ2UvanBlZ3xpbWFnZXMvaDM3L2hmNi85NDA3ODAxOTUwMjM4LmpwZ3xkMjgxNWY4MTBiOGRjNTEwYmNhNGU5Y2U4ODk1YjNmODgxYWMwMDMyM2M2ZGU0ZmRhNzE4OGQyMGQ2YWUxNzUw")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
