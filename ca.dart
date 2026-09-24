class OngkirEkspedisi {
    // Atribut
    String kotaTujuan = '';
    double beratKg = 7;

    // Constructor
    OngkirEkspedisi({required this.beratKg, required this.kotaTujuan});

    // Method
    void hitungOngkir(bool isExpress){
   double tarif = 10000;
    if( kotaTujuan == "Luar Pulau"){
        tarif = 25000;
    }
     if(isExpress == true){
       tarif = tarif + 10000;
     }
    if(beratKg <= 0){
      print ("Berat barang tidak valid");
    }else if(beratKg >5){
      tarif = tarif * beratKg - 15000;
    }else{
      tarif = tarif * beratKg;
    }
       
      print ("tujuan: $kotaTujuan | berat: $beratKg | totalOngkir: $tarif");
          
 }
}

// Instasiasi
void main(){
  var ongkirEkspedisiPertama = OngkirEkspedisi(
    beratKg : 10.0,
    kotaTujuan : "Luar Pulau",
    
  );
  
  ongkirEkspedisiPertama.hitungOngkir(true);
  ongkirEkspedisiPertama.hitungOngkir(false);

}

