//
//  Authentication.swift
//  BucketList
//
//  Created by Chris Eadie on 18/08/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//

import Foundation
import LocalAuthentication

struct Authentication {
    func attempt() {
        let context = LAContext()
        var error: NSError?
        
        // Check if biometric authentication is possible
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            // Authentication possible
            let reason = "We need to unlock your data."
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                // Authentication complete
                DispatchQueue.main.async {
                    if success {
                        // TODO: Authentication successful
                    } else {
                        // TODO: Authentication unsuccessful
                    }
                }
            }
        } else {
            // TODO: No biometrics
        }
    }
}
