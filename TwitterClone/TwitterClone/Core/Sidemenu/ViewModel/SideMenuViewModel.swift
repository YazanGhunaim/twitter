//
//  SideMenuViewModel.swift
//  TwitterClone
//
//  Created by Yazan Ghunaim on 7/9/23.
//

import Foundation


enum SideMenuViewModel: Int, CaseIterable {
case profile
case lists
case bookmark
case logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .lists: return "Lists"
        case .bookmark: return "Bookmarks"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .bookmark: return "bookmark"
        case .logout: return "arrow.left.square"
        }
    }
}

