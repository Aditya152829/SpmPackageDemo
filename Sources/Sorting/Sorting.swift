// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct MyLibrary {
    
    public static func reverseString(str: String) -> String {
        var strNew:String = ""
        for char in str {
            strNew = "\(char)" + str
        }
        return strNew
    }
    
    public static func  genericSorting<T:Comparable>(array: inout [T]) ->[T] {
        for i in 0..<array.count {
            for j in 0..<array.count {
                if array[i] < array[j] {
                    var temp:T?
                    temp = array[i]
                    array[i] = array[j]
                    array[j] = temp!
                }
            }
        }
        return array
    }
}

