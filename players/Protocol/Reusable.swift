//
//  Reusable.swift
//  players
//
//  Created by Rafael Tosta on 21/01/23.
//

import Foundation
import UIKit

protocol Reusable { }

extension Reusable {
    static var identifier: String {
        return String(describing: Self.self)
    }
}

extension UITableViewCell: Reusable { }
