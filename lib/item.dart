class Item {
  int _id;
  String _nama;
  String _ttl;
  int _tabungan;
  String _alamat;
  int get id => _id;
  String get nama => this._nama;
  set nama(String value) => this._nama = value;
  get alamat => this._alamat;
  set alamat(String value) => this._alamat = value;
  get ttl => this._ttl;
  set ttl(value) => this._ttl = value;
  get tabungan => this._tabungan;
  set tabungan(value) => this._tabungan = value;
// konstruktor versi 1
  Item(this._nama, this._alamat, this._ttl, this._tabungan);
  // konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._nama = map['nama'];
    this._alamat = map['alamat'];
    this._ttl = map['ttl'];
    this._tabungan = map['tabungan'];
  }
  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['nama'] = nama;
    map['alamat'] = alamat;
    map['ttl'] = ttl;
    map['tabungan'] = tabungan;
    return map;
  }
}
