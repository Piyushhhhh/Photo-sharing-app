import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piyushPhotoSharing/screens/authentication/login_page.dart';
import 'package:piyushPhotoSharing/screens/authentication/register_page.dart';
import 'package:piyushPhotoSharing/screens/authentication/upload_user_photo.dart';
import 'package:piyushPhotoSharing/screens/favorite/favorite.dart';
import 'package:piyushPhotoSharing/screens/home/home_page.dart';
import 'package:piyushPhotoSharing/screens/post/add_post.dart';
import 'package:piyushPhotoSharing/screens/post/detail_post.dart';
import 'package:piyushPhotoSharing/screens/profile/profile_page.dart';
import 'package:piyushPhotoSharing/screens/welcome/get_started_screen.dart';
import 'package:piyushPhotoSharing/screens/welcome/welcome_screen.dart';
import 'package:piyushPhotoSharing/screens/profile/edit_profile.dart';
import 'screens/welcome/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      getPages: [
        GetPage(
          name: GetStartedPage.id,
          page: () => GetStartedPage(),
        ),
        GetPage(
          name: WelcomePage.id,
          page: () => WelcomePage(),
        ),
        GetPage(
          name: LoginPage.id,
          page: () => LoginPage(),
        ),
        GetPage(
          name: RegisterPage.id,
          page: () => RegisterPage(),
        ),
        GetPage(
          name: UserPhoto.id,
          page: () => UserPhoto(),
        ),
        GetPage(
          name: HomePage.id,
          page: () => HomePage(),
        ),
        GetPage(
          name: DetailPost.id,
          page: () => DetailPost(),
        ),
        GetPage(
          name: AddPost.id,
          page: () => AddPost(),
        ),
        GetPage(
          name: FavoritePage.id,
          page: () => FavoritePage(),
        ),
        GetPage(
          name: ProfilePage.id,
          page: () => ProfilePage(),
        ),
        GetPage(
          name: SplashScreen.id,
          page: () => SplashScreen(),
        ),
        GetPage(
          name: EditProfile.id,
          page: () => EditProfile(),
        ),
      ],
    );
  }
}
