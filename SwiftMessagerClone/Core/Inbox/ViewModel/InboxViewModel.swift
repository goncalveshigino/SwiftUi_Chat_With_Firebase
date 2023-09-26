//
//  InboxViewModel.swift
//  SwiftMessagerClone
//
//  Created by Goncalves Higino on 26/09/23.
//

import Foundation
import Combine
import Firebase


class InboxViewModel: ObservableObject {
    
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setUpSubscribers()
    }
    
    private func setUpSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellables)
    }
}
