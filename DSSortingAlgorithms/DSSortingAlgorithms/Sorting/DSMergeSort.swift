//
//  DSMergeSort.swift
//  DSSortingAlgorithms
//
//  Created by Nishant Kumbhare on 03/10/19.
//  Copyright © 2019 NishantKumbhare. All rights reserved.
//

import Foundation

class DSMergeSort {
    
    private var sortProtocol: DSSortProtocol?
    
    private func mergeSort<Element: Comparable>(_ inputArray: [Element]) -> [Element] {
        guard inputArray.count > 1 else {
            return inputArray
        }
        
        let middle = inputArray.count/2
        
        let leftArray = mergeSort(Array(inputArray[..<middle]))
        let rightArray = mergeSort(Array(inputArray[middle...]))
        
        return merge(leftArray, rightArray)
    }
    
    private func merge<Element: Comparable>(_ leftArray: [Element], _ rightArray: [Element]) -> [Element] {
        var leftIndex = 0
        var rightIndex = 0
        
        var sortedArray: [Element] = []
        
        while leftIndex < leftArray.count && rightIndex < rightArray.count {
            let leftElement = leftArray[leftIndex]
            let rightElement = rightArray[rightIndex]
            
            if leftElement < rightElement {
                sortedArray.append(leftElement)
                leftIndex += 1
            } else if leftElement > rightElement {
                sortedArray.append(rightElement)
                rightIndex += 1
            } else {
                sortedArray.append(leftElement)
                leftIndex += 1
                sortedArray.append(rightElement)
                rightIndex += 1
            }
        }
        
        if leftIndex < leftArray.count {
            sortedArray.append(contentsOf: leftArray[leftIndex...])
            leftIndex += 1
        } else if rightIndex < rightArray.count {
            sortedArray.append(contentsOf: rightArray[rightIndex...])
            rightIndex += 1
        }
        return sortedArray
    }

}

extension DSMergeSort: DSSortProtocol {
    
    func sort<Element>(_ inputArray: inout [Element]) where Element : Comparable {
        inputArray = self.mergeSort(inputArray)
    }
    
    func sort<T>(_ inputArray: [T]) -> [T] where T : Comparable {
        return self.mergeSort(inputArray)
    }
    
}
