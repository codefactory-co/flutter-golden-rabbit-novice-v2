import 'package:calendar_scheduler/firebase_options.dart';
import 'package:calendar_scheduler/screen/auth_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Supabase.initialize(
    url: 'https://eejxnjqoxnfzgomkrfqs.supabase.co',
    anonKey:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVlanhuanFveG5memdvbWtyZnFzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkyMzk3NjEsImV4cCI6MjAxNDgxNTc2MX0.h7D65sqNLkKdxmtFMbAwo0nWQ6H9YAvP9sKrz5r7YPk',
  );

  await initializeDateFormatting();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    ),
  );
}
