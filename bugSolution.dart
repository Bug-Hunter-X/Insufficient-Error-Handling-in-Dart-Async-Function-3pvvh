```dart
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:logging/logging.dart'; // Add logging package

Future<void> fetchData() async {
  final logger = Logger('fetchData'); // Initialize logger
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      logger.severe('Failed to load data. Status code: ${response.statusCode}, body: ${response.body}');
      // More sophisticated error handling:
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e, stacktrace) {
    logger.shout('An unexpected error occurred: $e', stacktrace); // Log with stacktrace
    // Handle error appropriately for the user, e.g., display a user-friendly error message
    // Re-throw the exception for higher-level handling if needed.
    rethrow; // Re-throwing allows for centralized error handling.
  }
}
```