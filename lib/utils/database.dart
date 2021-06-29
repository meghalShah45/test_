import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('notes');

class Database {
  static String? userUid;

  static String? docId;

  static Future<void> addItem({
    required String title,
    required String km,
    required String fuelamt,
    required String fuelpl,
    required String location,
    required String notes,
    required String description,

  }) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "title": title,
      "km": km,
      "fuelamt": fuelamt,
      "fuelpl": fuelpl,
      "location": location,
      "notes": notes,
      "description": description,
    };

    await documentReferencer
        .set(data)
        .whenComplete(() => print("Note item added to the database"))
        .catchError((e) => print(e));
  }

  static Future<void> updateItem({
    required String title,
    required String km,
    required String fuelamt,
    required String fuelpl,
    required String location,
    required String notes,
    required String description,
    required String docId,
  }) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "title": title,
      "km": km,
      "fuelamt": fuelamt,
      "fuelpl": fuelpl,
      "location": location,
      "notes": notes,
      "description": description,
    };

    await documentReferencer
        .update(data)
        .whenComplete(() => print("Note item updated in the database"))
        .catchError((e) => print(e));
  }

  static Future<void> getItem({
    /*required String title,
    required String km,
    required String fuelamt,
    required String fuelpl,
    required String location,
    required String notes,
    required String description,*/
    required String docId,
  }) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      /*"title": title,
      "km": km,
      "fuelamt": fuelamt,
      "fuelpl": fuelpl,
      "location": location,
      "notes": notes,
      "description": description,*/
    };

    /*await documentReferencer
        .update(data)
        .whenComplete(() => print("Note item updated in the database"))
        .catchError((e) => print(e));*/
  }

  static Stream<QuerySnapshot> readItems() {
    CollectionReference notesItemCollection =
        _mainCollection.doc(userUid).collection('items');

    return notesItemCollection.snapshots();
  }

/*  static Stream<QuerySnapshot> getItem() {
    DocumentReference docReferencer =
    _mainCollection.doc(userUid).collection('items').doc('1smsSEWqux6vMEU7AgZg');

    return docReferencer;
  }*/

  static Future<void> deleteItem({
    required String docId,
  }) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc(docId);

    await documentReferencer
        .delete()
        .whenComplete(() => print('Note item deleted from the database'))
        .catchError((e) => print(e));
  }
}
