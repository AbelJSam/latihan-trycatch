import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async{
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

//ccc
    Future<List<dynamic>> tarikData() async {
      try {
            var respone = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/comments'),
      );
      var data = jsonDecode(respone.body);
      return data;
      } catch (e) {
      return[];  
      }

}
  var data = await tarikData();

print('-----------------------------');
print('Data Comments');
print('-----------------------------');

// for (var i = 0; i < data.length; i++){
//   print('${data[i]['name']} | ${data[i]['email']}');
//   print('-----------------------------');
// }

// cara For in
for (var comment in data) {
  print('${comment['name']} | ${comment['email']}');
  print('-----------------------------------------');
}

// cara for each
// data.forEach((comment) {
//   print('${comment['name']} | ${comment['email']}');
//   print('-----------------------------------------');
// });
}