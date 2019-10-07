//
//  DSQuickSort.swift
//  DSSortingAlgorithms
//
//  Created by Nishant Kumbhare on 06/10/19.
//  Copyright © 2019 NishantKumbhare. All rights reserved.
//

import UIKit

class DSQuickSort {

    private weak var sortProtocol: DSSortProtocol?
    
    private func quickSort<Q: Comparable>(_ inputArray: [Q]) -> [Q] {
        
        guard inputArray.count > 1 else {
            return inputArray
        }
        
        let pivot = inputArray[inputArray.count/2]
        let lessArray = inputArray.filter { $0 < pivot }
        let greaterArray = inputArray.filter { $0 > pivot }
        let middleArray = inputArray.filter { $0 == pivot }
        
        return quickSort(lessArray) + quickSort(middleArray) + quickSort(greaterArray)
    }

}

extension DSQuickSort: DSSortProtocol {
    
    func sort<Element>(_ inputArray: inout [Element]) where Element : Comparable {
        inputArray = self.quickSort(inputArray)
    }
    
    func sort<T>(_ inputArray: [T]) -> [T] where T : Comparable {
        return self.quickSort(inputArray)
    }
}
