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
  Future<List<dynamic>> tarikData() async {
    var respone = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/comments'),
    );    
    var data = jsonDecode(respone.body);
    return data; 
  }
  List<dynamic> hasilData = await tarikData();
  print(hasilData);
}