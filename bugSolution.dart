```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      final error = jsonDecode(response.body)['error'] ?? response.reasonPhrase;
      throw Exception('Failed to load data. Status code: ${response.statusCode}, Error: $error');
    }
  } catch (e, stacktrace) {
    print('Error: $e');
    print('Stacktrace: $stacktrace');
    rethrow; 
  }
}
```