import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login_screen.dart'; // Importez vos écrans ici
import 'screens/phone_login_screen.dart';
// import 'screens/signup_screen.dart';
// import 'screens/language_selection_screen.dart';
// import 'screens/conversation_list_screen.dart';
// import 'screens/chat_screen.dart';
// import 'screens/profile_screen.dart';
// import 'screens/edit_profile_screen.dart';

void main() async {
  // Initialiser Firebase avant de lancer l'application
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Multilingue', // Titre de l'application
      theme: ThemeData(
        primarySwatch: Colors.blue, // Thème principal
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // Route initiale (page de connexion)
      routes: {
        // Configuration des routes pour la navigation
        '/': (context) => LoginScreen(), // Page de connexion
        //'/phoneLogin': (context) => PhoneLoginScreen(), // Connexion par téléphone
        // '/signup': (context) => SignupScreen(), // Page d'inscription
        // '/languageSelection': (context) => LanguageSelectionScreen(), // Choix de la langue
        // '/conversationList': (context) => ConversationListScreen(), // Liste des conversations
        // '/chat': (context) => ChatScreen(), // Page de chat
        // '/profile': (context) => ProfileScreen(), // Page de profil
        // '/editProfile': (context) => EditProfileScreen(), // Modification du profil
      },
      debugShowCheckedModeBanner: false, // Désactiver la bannière de débogage
    );
  }
}