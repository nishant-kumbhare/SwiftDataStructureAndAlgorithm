//
//  DSSortProtocol.swift
//  DSSortingAlgorithms
//
//  Created by Nishant Kumbhare on 02/10/19.
//  Copyright © 2019 NishantKumbhare. All rights reserved.
//

import Foundation

protocol DSSortProtocol: class {
    func sort<Element: Comparable>(_ inputArray: inout [Element])
    func sort<T: Comparable>(_ inputArray: [T]) -> [T]
}
