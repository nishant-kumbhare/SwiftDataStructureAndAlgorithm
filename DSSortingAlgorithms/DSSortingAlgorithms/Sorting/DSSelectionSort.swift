//
//  DSSelectionSort.swift
//  DSSortingAlgorithms
//
//  Created by Nishant Kumbhare on 01/10/19.
//  Copyright © 2019 NishantKumbhare. All rights reserved.
//

import Foundation

class DSSelectionSort {
    
    private var sortProtocol: DSSortProtocol?
    
    private func selectionSort<Element: Comparable>(_ inputArray: [Element]) -> [Element] {
        
        var sortedArray = inputArray
        
        guard sortedArray.count > 1 else {
            return sortedArray
        }
        
        var lowestIndex = 0
        
        for leftIndex in 0..<sortedArray.count {
            lowestIndex = leftIndex
            
            for rightIndex in leftIndex+1..<sortedArray.count {
                if sortedArray[lowestIndex] > sortedArray[rightIndex] {
                    lowestIndex = rightIndex
                }
            }
            
            if lowestIndex != leftIndex {
                sortedArray.swapAt(leftIndex, lowestIndex)
            }
        }
        
        return sortedArray
    }
    
}

extension DSSelectionSort: DSSortProtocol {
    
    
    func sort<Element>(_ inputArray: inout [Element]) where Element : Comparable {
        
        inputArray = self.selectionSort(inputArray)
    }
    
    func sort<T>(_ inputArray: [T]) -> [T] where T : Comparable {

        return self.selectionSort(inputArray)
    }
    
    func reverse<R>(_ inputArray: [R]) -> [R] where R : Comparable {
        
        var sortedArray = inputArray
        
        guard sortedArray.count > 1 else {
            return sortedArray
        }
        
        var lowestIndex = 0
        
        for leftIndex in 0..<inputArray.count {
            lowestIndex = leftIndex
            
            for rightIndex in leftIndex+1..<inputArray.count {
                if sortedArray[lowestIndex] < sortedArray[rightIndex] {
                    lowestIndex = rightIndex
                }
            }
            
            if lowestIndex != leftIndex {
                sortedArray.swapAt(leftIndex, lowestIndex)
            }
        }
        
        return sortedArray
    }
}
