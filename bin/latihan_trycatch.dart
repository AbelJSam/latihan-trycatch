import 'dart:convert';

import 'package:http/http.dart' as http;

// void main() async{
//   //fungsi future tanpa pengembalian nilai
//   Future<void> tarikData() async {
//     var respone = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/comments'),
//       );
//       var data = jsonDecode(respone.body);
//       print(data);
// }

  // await tarikData();


   // POIN: Membuat Future dengan pengembalian nilai (Return Value)
  // Future<List<dynamic>> tarikData() async {
  //   var respone = await http.get(
  //     Uri.parse('https://jsonplaceholder.typicode.com/posts'),
  //   );    
  //   var data = jsonDecode(respone.body);
  //   return data; 
  // }

  // // Memanggil fungsi dan menyimpan hasilnya ke dalam variabel
  // List<dynamic> hasilData = await tarikData();

  // print(hasilData);

// Try Catch
//     Future<List<dynamic>> tarikData() async {
//       try {
//             var respone = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/comments'),
//       );
//       var data = jsonDecode(respone.body);
//       return data;
//       } catch (e) {
//       return[];  
//       }

// }
//   var data = await tarikData();

// print('-----------------------------');
// print('Data Comments');
// print('-----------------------------');

// for (var i = 0; i < data.length; i++){
//   print('${data[i]['name']} | ${data[i]['email']}');
//   print('-----------------------------');
// }

// cara For in
// for (var comment in data) {
//   print('${comment['name']} | ${comment['email']}');
//   print('-----------------------------------------');
// }

// cara for each
// data.forEach((comment) {
//   print('${comment['name']} | ${comment['email']}');
//   print('-----------------------------------------');
// });
//}


//https://dummyjson.com/products
// print title | price
void main() async {
  Future<List<dynamic>> tarikData() async {
    var response = await http.get(
      Uri.parse('https://dummyjson.com/products'),
    );
    // Decode JSON dari body API
    var jsonRespon = jsonDecode(response.body);
    // POIN PENTING: Ambil list yang ada di dalam key 'products'
    return jsonRespon['products']; 
  }
  // Memanggil fungsi dan mendapatkan list produk
  List<dynamic> dataProduk = await tarikData();
  
  print('=================== FOR IN ===================');
  // Melakukan iterasi dengan for-in untuk mencetak title dan price
  for (var product in dataProduk) {
    print('${product['title']} | \$${product['price']}');
  }

    print('===================FOR EACH ===================');
  // Melakukan iterasi dengan forEach untuk mencetak title dan price
  dataProduk.forEach((product) {
    print('${product['title']} | \$${product['price']}');
  });


//Latihan
// Fungsi mengambil data dari API
  Future<List<dynamic>> ambilData() async {

    var response = await http.get(
      Uri.parse('https://dummyjson.com/users'),
    );

    // Decode JSON
    var jsonRespon = jsonDecode(response.body);

    // Ambil list yang ada di key 'users'
    return jsonRespon['users'];
  }

  // Memanggil fungsi dan mendapatkan list user
  List<dynamic> dataUser = await ambilData();

  print('================ FOR IN ================');

  // Gunakan for-in
  for (var user in dataUser) {
    print('${user['firstName']} ${user['lastName']} | Umur: ${user['age']}');
  }


  print('\n================ FOR EACH ================');

  // Gunakan forEach
  dataUser.forEach((user) {
    print('${user['email']} | ${user['address']['city']}');
  });

}

