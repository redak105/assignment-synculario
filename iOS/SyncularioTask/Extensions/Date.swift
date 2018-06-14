//
//  Date.swift
//  SyncularioTask
//
//  Created by Radek Zmeskal on 14/06/2018.
//  Copyright © 2018 Radek Zmeskal. All rights reserved.
//

import UIKit

extension Date {
    
    /// custom inicialization
    ///
    /// - Parameter string: date in format "yyyy-MM-dd HH:mm:ss"
    init?( string: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        guard let date = formatter.date(from: string) else {
            return nil
        }
        self = date
    }
    
    /// Format date to format "hh:mm dd.MM.yyyy"
    ///
    /// - Returns: string representation
    func format() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm dd.MM.yyyy"
        return formatter.string(from: self)
    }
}

