//
//  DSInsertionSort.swift
//  DSSortingAlgorithms
//
//  Created by Nishant Kumbhare on 02/10/19.
//  Copyright © 2019 NishantKumbhare. All rights reserved.
//

import Foundation

class DSInsertionSort {
    
    private var sortProtocol: DSSortProtocol?
    
    private func insertionSort<Element: Comparable>(_ inputArray: [Element]) -> [Element] {
        var sortedArray = inputArray
        guard sortedArray.count > 1 else {
            return sortedArray
        }
        
        for rightIndex in 1..<sortedArray.count {
            for leftIndex in (1...rightIndex).reversed() {
                if sortedArray[leftIndex] < sortedArray[leftIndex-1] {
                    sortedArray.swapAt(leftIndex, leftIndex-1)
                } else {
                    break
                }
            }
        }
        return sortedArray
    }
}

extension DSInsertionSort: DSSortProtocol {
    
    func sort<Element>(_ inputArray: inout [Element]) where Element : Comparable {
        
        inputArray = self.insertionSort(inputArray)
        
    }
    
    func sort<T>(_ inputArray: [T]) -> [T] where T : Comparable {
        
        return self.insertionSort(inputArray)
    }
    
    func reverse<R>(_ inputArray: [R]) -> [R] where R : Comparable {
        
        var sortedArray = inputArray
        
        guard sortedArray.count > 1 else {
            return sortedArray
        }
        
        
        for rightIndex in 1..<sortedArray.count {
            
            for leftIndex in (1...rightIndex).reversed() {
                if sortedArray[leftIndex] > sortedArray[leftIndex-1] {
                    sortedArray.swapAt(leftIndex, leftIndex-1)
                } else {
                    break
                }
            }
        }
        
        return sortedArray
    }
    
}
