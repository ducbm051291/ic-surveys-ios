//
//  NimbleSurveyApp.swift
//  NimbleSurvey
//
//  Created by David Bui on 06/05/2022.
//  Copyright © 2022 Nimble. All rights reserved.
//

import Firebase
import SwiftUI

@main
struct NimbleSurvey: App {

    var body: some Scene {
        WindowGroup {
            SplashScreen()
        }
    }

    init() {
        FirebaseApp.configure()
    }
}
