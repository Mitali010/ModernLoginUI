import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService{
  signInWithGoogle() async{
    final GoogleSignInAccount? guser =  await GoogleSignIn().signIn();
    // obtain auth details from request
    final GoogleSignInAuthentication  gAuth = await guser!.authentication;
// create a new credential for user
    final credentail =  GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken
    );
    return await FirebaseAuth.instance.signInWithCredential(credentail);


  }

}