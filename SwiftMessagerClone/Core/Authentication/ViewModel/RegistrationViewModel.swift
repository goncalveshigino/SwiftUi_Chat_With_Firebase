//
//  RegistrationViewModel.swift
//  SwiftMessagerClone
//
//  Created by Goncalves Higino on 26/09/23.
//

import SwiftUI

class RegistrationViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, fullname: fullname)
    }
}
