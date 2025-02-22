let array = [1, 2, 3]
let index = 4

if index < array.count {
    print(array[index]) // Safe access
} else {
    print("Index out of range") // Handle the error gracefully
}

//Alternative solution using optional binding:

if let element = array[safe: index] {
    print(element)
} else {
    print("Index out of range")
}

//Extension for safe array access
 extension Array {
    subscript(safe index: Int) -> Element? {
        guard index >= 0 && index < self.count else { return nil }
        return self[index]
    }
}