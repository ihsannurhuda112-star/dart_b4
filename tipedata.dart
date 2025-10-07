void main(){
// Menyimpan nama pengguna
String nama = "Ihsan";  
// Menyimpan Profesi
// Menyimpan usia
int usia= 19;
// Mencetak biodata ke konsol
 double tinggi = 1.6;
 List<String> judulbuku =["Animal farm,Seporsi mie ayam sebelum mati"];
 bool statusaktif=true;

  Map<String,dynamic> informasitambahan = {

  "profesi": "pengacara",
  "alamat" : "buaran",

  };

  void tampilkanBiodata(){
    print("Nama:$nama");
    print("Usia:$usia");
    print("tinggi:$tinggi");
    print("statusaktif:$statusaktif");
    print("judulbuku:$judulbuku");
    print("informasitambahan:$informasitambahan");

    


  }
   tampilkanBiodata();
  }


