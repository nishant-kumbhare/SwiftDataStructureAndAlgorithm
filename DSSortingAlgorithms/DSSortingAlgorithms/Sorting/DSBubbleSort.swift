//
//  DSBubbleSort.swift
//  DSSortingAlgorithms
//
//  Created by Nishant Kumbhare on 01/10/19.
//  Copyright © 2019 NishantKumbhare. All rights reserved.
//

import Foundation

class DSBubbleSort {
    
    private var sortProtocol: DSSortProtocol?
    
    private func bubbleSort<Element: Comparable>(_ inputArray: [Element]) -> [Element] {
    
        var sortedArray = inputArray
        
        guard sortedArray.count > 1 else {
            return sortedArray
        }
        
        var isSwiped = true
        
        while isSwiped {
            isSwiped = false
            
            for index in 0..<sortedArray.count-1 {
                if sortedArray[index] > sortedArray[index+1] {
                    sortedArray.swapAt(index, index+1)
                    isSwiped = true
                }
            }
        }
        return sortedArray
    }
}

extension DSBubbleSort: DSSortProtocol {
    
    func sort<Element>(_ inputArray: inout [Element]) where Element : Comparable {
        
        inputArray = self.bubbleSort(inputArray)
    }
    
    func sort<T>(_ inputArray: [T]) -> [T] where T : Comparable {
        return self.bubbleSort(inputArray)
    }
    
    func reverse<R>(_ inputArray: [R]) -> [R] where R : Comparable {
        
        var sortedArray = inputArray
        
        guard sortedArray.count > 1 else {
            return sortedArray
        }
        
        var isSwapped = true
        
        while isSwapped {
            isSwapped = false
            
            for index in 0..<sortedArray.count-1 {
                if sortedArray[index] < sortedArray[index+1] {
                    sortedArray.swapAt(index, index+1)
                    isSwapped = true
                }
            }
        }
        
        return sortedArray
    }
    
}
