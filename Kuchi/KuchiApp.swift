//
//  KuchiApp.swift
//  Kuchi
//
//  Created by Ella Ngo on 2/9/23.
//

import SwiftUI

@main
struct KuchiApp: App {
    let userManager = UserManager() // create an instance of UserManager

    // make sure the stored user is loaded
    init() {
        userManager.load()
    }
    var body: some Scene {
        WindowGroup {
            RegisterView()
                .environmentObject(userManager)
        }
    }
}


