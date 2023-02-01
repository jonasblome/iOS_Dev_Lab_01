//
//  Complex.swift
//  iOS1-Blome
//
//  Created by Jonas Blome on 26.10.22.
//

import Foundation

class Complex {
    var re : Double = 0.0
    var im : Double = 0.0
    
    init() { }
    init(real re: Double, imaginary im: Double) {
        self.re = re
        self.im = im
    }
    
    func incrementBy(real re: Double) {
        self.re += re
    }
    
    func incrementBy(imaginary im: Double) {
        self.im += im
    }
    
    func incrementBy(complex c: Complex) {
        self.re += c.re
        self.im += c.im
    }
    
    func multiplyBy(complex c: Complex) {
        let newRe = self.re * c.re - self.im * c.im
        let newIm = self.re * c.im + self.im * c.re
        self.re = newRe
        self.im = newIm
    }
    
    func rotateBy(angle a : Double) {
        multiplyBy(complex: Complex(real: cos(a), imaginary: sin(a)))
    }
    
    func plus(complex c: Complex) -> Complex {
        let sum = Complex(real: self.re, imaginary: self.im)
        sum.incrementBy(complex: c)
        
        return sum
    }
}
