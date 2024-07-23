


import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../features/authentication/screens/signup/signup_page.dart';
import '../../features/core/screens/home.dart';
import 'exception/authentication_exception.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance=>Get.find();

  final _auth=FirebaseAuth.instance;

  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser=Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser,_setInitialScreen);

  }
  _setInitialScreen(User? user){
    user==null? Get.offAll(() =>const SignUpScreen()):Get.offAll(()=>  HomePage());
  }

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credential) async {
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (e){
        if(e.code=='invalid-phone-number'){
          Get.snackbar('Error', 'The provided phone number is not valid');
        }
        else{
          Get.snackbar('Error', 'Something went wrong try again');
        }
      },
      codeSent: (verificationId,resendToken){
        this.verificationId.value=verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId){
        this.verificationId.value=verificationId;
      },
    );
  }
  Future<bool> verifyOTP(String otp) async
  {
    var credentials=await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId.value,smsCode: otp));
    return credentials.user !=null ?true:false;
  }

  Future<void> createUserWithEmailAndPassword(String email,String password) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value!=null? Get.offAll(()=> HomePage()):Get.to(()=>const SignUpScreen());
    } on FirebaseAuthException catch(e){
      final ex=SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION-${ex.message}');
      throw ex;
    } catch(_){
      final ex=SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION-${ex.message}');
      throw ex;
    }
  }
  Future<void> loginWithEmailAndPassword(String email,String password) async {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value!=null? Get.offAll(()=> HomePage()):Get.to(()=>const SignUpScreen());
    } on FirebaseAuthException catch(e){
      print('ERROR IN LOGIN-,${e.message}');
    } catch(_){
    }
  }
  Future<void> logout() async => await _auth.signOut();





}