void main(){
  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
//Mengeluarkan output [Home, Furniture, Plants, Outlet] jika promoActive true
//Mengeluarkan output [Home, Furniture, Plants] jika promoActive false