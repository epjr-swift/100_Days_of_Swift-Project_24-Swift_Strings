// Challenge 1:

extension String {
    func withPrefix(_ prefix: String) -> String {
        if self.contains(prefix) { return self }
        
        return prefix + self
    }
}

"pet".withPrefix("car") // returns "carpet"
"carceration".withPrefix("car") // returns "carceration"

// Challenge 2:

extension String {
    var isNumeric: Bool {
        /* if Double(self) != nil {
            return true
        } else {
            return false
        } */
        return Double(self) != nil
    }
}

"5".isNumeric // returns true
"24.2".isNumeric // returns true
"thirty".isNumeric // returns false

// Challenge 3:

extension String {
    var lines: [String] {
        return self.components(separatedBy: "\n")
    }
}

"this\nis\na\ntest".lines // returns ["this", "is", "a", "test"]
