//
//  UIViewControllerExtensions.swift
//  Habitual
//
//  Created by Bo on 2/20/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
  static func instantiate() -> Self {
    return self.init(nibName: String(describing: self), bundle: nil)
  }
}
