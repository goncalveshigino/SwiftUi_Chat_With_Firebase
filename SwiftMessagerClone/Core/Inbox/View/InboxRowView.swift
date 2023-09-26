//
//  InboxRowView.swift
//  SwiftMessagerClone
//
//  Created by Goncalves Higino on 20/09/23.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            CircularProfileImageView(user: .MOCK_USER, size: .medium)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Goncalves Higino")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Ola rapaz tudo bem? dgdgdgdggdgd dgdgdgdgdgdg dg")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
                
            }
            
            
            HStack {
                Text("Yesterday")
                
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }
       
        .frame(height: 72)
    }
}

struct InboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        InboxRowView()
    }
}
