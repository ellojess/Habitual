//
//  HabitTableViewCell.swift
//  Habitual
//
//  Created by Bo on 3/2/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import UIKit

class HabitTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageViewIcon: UIImageView!
    @IBOutlet weak var labelHabitTitle: UILabel!
    @IBOutlet weak var labelStreaks: UILabel!
    

        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }
        
        // Set the identifier for the custom cell
        static let identifier = "HabitCell"

        // Returning the xib file after instantiating it
        static var nib: UINib {
               return UINib(nibName: String(describing: self), bundle: nil)
        }
        
        func configure(_ habit: Habit){
            self.imageViewIcon.image = habit.selectedImage.image
            self.labelHabitTitle.text = habit.title
            self.labelStreaks.text = "streak: \(habit.currentStreak)"
            
            if habit.completedToday{
                self.accessoryType = .checkmark
            }else{
                self.accessoryType = .disclosureIndicator
            }
        }
        
    }
