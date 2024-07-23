//
//
// class TouristSpot{
//   final String imageUrl;
//   final String name;
//   final String location;
//   final String narrator;
//
//
//   toJson(){
//     return{
//       "FullName":fullName,
//       "Email": email,
//       "Phone":phoneNo,
//       "Password":password,
//     };
//   }
//
//   // map user_repo to fetched from firestore to usermodel
//   factory TouristSpot.fromSnapshot(DocumentSnapshot<Map<String , dynamic>> document){
//     final data=document.data()!;
//
//     return TouristSpot(
//       id:document.id,
//       email: data["Email"],
//       fullName: data["FullName"],
//       password: data["Password"],
//       phoneNo: data["Phone"],
//     );
//   }
// }