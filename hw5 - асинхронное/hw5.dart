import 'package:hw5/hw5.dart' as hw5;
import 'dart:convert';
import 'dart:io';


void main() async {
  var client = HttpClient();
  try {
  HttpClientRequest request = await client
                  .getUrl(Uri.parse('https://mafbase.ru/api/availablePlayers'));
  HttpClientResponse response = await request.close();

  final stringData = await response.transform(utf8.decoder).join();
  final data = jsonDecode(stringData);
  for (var player in data['players']){
    print(player['nickname']);
  }
} finally {
  client.close();
  }
}