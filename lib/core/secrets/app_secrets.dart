import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppSecrets {
  static final supabaseUrl = dotenv.env['SUPABASE_URL'];
 
  static final supabaseKey =  dotenv.env['SUPABASE_API_KEY'];
}
