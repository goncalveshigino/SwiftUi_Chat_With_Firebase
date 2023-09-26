//
//  ProfileViewModel.swift
//  SwiftMessagerClone
//
//  Created by Goncalves Higino on 20/09/23.
//

import SwiftUI
import PhotosUI

class ProfileViewModel: ObservableObject {
    
    @Published var seletedItem: PhotosPickerItem? {
        didSet { Task { try await loadImage() }}
    }
    
    @Published var profileImage: Image?
    
    
    func loadImage() async throws {
        guard let item = seletedItem else { return }
        guard let imageData = try await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: imageData) else { return }
        self.profileImage = Image(uiImage: uiImage)
    }
    
}
