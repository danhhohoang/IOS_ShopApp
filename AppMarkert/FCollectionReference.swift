//
//  FCollectionRepository.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import Firebase
import FirebaseFirestoreSwift

enum FCollectionReference:String{
    case Orders, Mobiles
}
func FirebaseReference(_ collectionReference: FCollectionReference) -> CollectionReference {
    
    Firestore.firestore().collection(collectionReference.rawValue)
}
