class ItemOb{
  String name;
  String desc;
  String amount;

  ItemOb(this.name, this.desc, this.amount);

}

List<ItemOb> getDummyList(){
  List<ItemOb> itemList = [];
  for(int i=0 ; i<20; i++){
    itemList.add(ItemOb("name $i", "description $i", "${i * 150}"));
  }
  return itemList;
}