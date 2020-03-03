//
//  Habit.swift
//  Habitual
//
//  Created by Bo on 2/27/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

struct Habit: Codable {
    enum Images: Int, Codable, CaseIterable {
        case book
        case bulb
        case clock
        case code
        case drop
        case food
        case grow
        case gym
        case heart
        case lotus
        case other
        case pet
        case pill
        case search
        case sleep
        case tooth

        var image: UIImage {
            guard let image = UIImage(named: String(describing: self)) else {
                fatalError("image \(self) not found")
            }

            return image
        }
    }
    
      var title: String
    let dateCreated: Date = Date()
    var selectedImage: Habit.Images

    var currentStreak: Int = 0
    var bestStreak: Int = 0
    var lastCompletionDate: Date?
    var numberOfCompletions: Int = 0

    var completedToday: Bool {
        return lastCompletionDate?.isToday ?? false
    }

    init(title: String, image: Habit.Images) {
        self.title = title
        self.selectedImage = image
    }
    
}
