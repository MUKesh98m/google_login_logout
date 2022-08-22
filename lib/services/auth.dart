// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:rive_animation/localdb.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// final FirebaseAuth _auth = FirebaseAuth.instance;
// final GoogleSignIn googleSignIn = GoogleSignIn();
//
// //Sign in Function
// Future<User?> signinWithGoogle() async {
//   //SIGNING WITH GOOGLE
//   GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
//   final GoogleSignInAuthentication googleSignInAuthentication =
//       await googleSignInAccount!.authentication;
//   //CREATING CREADENTIAL FOR FIREBASE
//   final AuthCredential credential = GoogleAuthProvider.credential(
//       idToken: googleSignInAuthentication.idToken,
//       accessToken: googleSignInAuthentication.accessToken);
//
//   //user variable store the all data related to user
//   final userCredential = await _auth.signInWithCredential(credential);
//   final User? user = userCredential.user;
//   //check user valid or not
//   assert(!user!.isAnonymous);
//   assert(await user?.getIdToken() != null);
//   final User? currentUser = await _auth.currentUser;
//   assert(currentUser?.uid == user?.uid);
//   print(user);
//   LocaldataSaver.saveLoginData(true);
//   LocaldataSaver.saveName(user!.displayName.toString());
//   LocaldataSaver.saveEmail(user!.email.toString());
//   LocaldataSaver.saveImage(user!.photoURL.toString());
//   return user;
// }
//
// Future<String> signOut() async {
//   LocaldataSaver.saveLoginData(false);
//   await googleSignIn.signOut();
//   await _auth.signOut();
//   return "SUCCESS";
// }


import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

import '../localdb.dart';


final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

//SIGN IN KA Function
Future<User?> signInWithGoogle() async
{
  try{


    //SIGNING IN WITH GOOGLE
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;

    //CREATING CREDENTIAL FOR FIREBASE
    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken
    );

    //SIGNING IN WITH CREDENTIAL & MAKING A USER IN FIREBASE  AND GETTING USER CLASS
    final userCredential  = await _auth.signInWithCredential(credential);
    final User? user = userCredential.user;

    //CHECKING IS ON
    assert(!user!.isAnonymous);
    assert(await user!.getIdToken() != null);

    final User? currentUser = await _auth.currentUser;
    assert(currentUser!.uid == user!.uid);
    print(user);
    LocalDataSaver.saveLoginData(true);
    LocalDataSaver.saveName(user!.displayName.toString());
    LocalDataSaver.saveMail(user.email.toString());
    LocalDataSaver.saveImg(user.photoURL.toString());

    return user;
  }catch(e){
    print(e);
  }

}

Future<String> signOut() async
{
  await googleSignIn.signOut();
  await _auth.signOut();
  return "SUCCESS";
}