//
//  main.swift
//  iOS1-Blome
//
//  Created by Jonas Blome on 26.10.22.
//

import Foundation

func readDouble() -> Double {
    let input = readLine()
    
    guard let val = Double(input!) else {
        return 0.0
    }
    
    return val
}

print("Please enter a complex number")
print("Real part: ")
var re = readDouble()

print("Imaginary part: ")
var im = readDouble()

var complex = Complex(real: re, imaginary: im)

print("Complex Number: \(complex.re) + \(complex.im)i!")

complex.incrementBy(complex: Complex(real: 1.2, imaginary: 2.4))
print("Complex Number: \(complex.re) + \(complex.im)i!")

complex.incrementBy(real: 2.2)
print("Complex Number: \(complex.re) + \(complex.im)i!")

complex.incrementBy(imaginary: 0.6)
print("Complex Number: \(complex.re) + \(complex.im)i!")

complex.multiplyBy(complex: Complex(real: 0.5, imaginary: 1.0))
print("Complex Number: \(complex.re) + \(complex.im)i!")

complex.rotateBy(angle: Double.pi)
print("Complex Number: \(complex.re) + \(complex.im)i!")


let plus = complex.plus(complex: Complex(real: 0.2, imaginary: 0.9))
print("Complex Number: \(plus.re) + \(plus.im)i!")
