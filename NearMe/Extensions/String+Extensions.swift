//
//  String+Extensions.swift
//  NearMe
//
//  Created by Luca Selvaggio on 08/07/24.
//

import Foundation

extension String {
        
    var formatPhoneForCall: String {
        self.replacingOccurrences(of: " ", with: "")
            .replacingOccurrences(of: "+", with: "")
            .replacingOccurrences(of: "(", with: "")
            .replacingOccurrences(of: ")", with: "")
            .replacingOccurrences(of: "-", with: "")
    }
}
