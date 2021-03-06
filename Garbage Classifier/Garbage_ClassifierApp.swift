//
//  Garbage_ClassifierApp.swift
//  Garbage Classifier
//
//  Created by Kris on 5/2/22.
//

import SwiftUI
import Firebase

@main
struct Garbage_ClassifierApp: App
{
    
    @StateObject var photoViewModel = PhotoViewModel()
    @StateObject var classifierViewModel = ClassifierViewModel()
    @StateObject var firestoreViewModel = FirestoreViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene
    {
        WindowGroup
        {
            ContentView()
                .environmentObject(photoViewModel)
                .environmentObject(classifierViewModel)
                .environmentObject(firestoreViewModel)
                .onAppear {
                    UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                }
        }
    }
}
