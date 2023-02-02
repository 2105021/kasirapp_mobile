class Calculate {
  int harga = 20;
  int jumlah = 4;
  late int _total;
  Calculate({this. harga = 20, this.jumlah = 4});
  int calculateTotal() {
    _total = harga * jumlah;
    return _total;
  }
}
