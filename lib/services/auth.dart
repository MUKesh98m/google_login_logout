import 'package:firebase_auth/firebase_auth.dart';
import 'package:rive_animation/localdb.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

//Sign in Function
Future<User?> signinWithGoogle() async {
  //SIGNING WITH GOOGLE
  GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;
  //CREATING CREADENTIAL FOR FIREBASE
  final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken);

  //user variable store the all data related to user
  final userCredential = await _auth.signInWithCredential(credential);
  final User? user = userCredential.user;
  //check user valid or not
  assert(!user!.isAnonymous);
  assert(await user?.getIdToken() != null);
  final User? currentUser = await _auth.currentUser;
  assert(currentUser?.uid == user?.uid);
  print(user);
  LocaldataSaver.saveName(user!.displayName.toString());
  LocaldataSaver.saveEmail(user!.email.toString());
  LocaldataSaver.saveImage(user!.photoURL.toString());
  return user;
}