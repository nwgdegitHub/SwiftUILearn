//
//  UserData.swift
//  SwiftUILearn
//
//  Created by udc on 2020/4/2.
//  Copyright © 2020 udc. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
