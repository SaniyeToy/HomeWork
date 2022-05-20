//
//  ViewController.swift
//  HomeWork
//
//  Created by Monterey on 20.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.calculateArea(2,3))
        print(self.factorial(6))
        print(self.findTheCharacter("AAAAA", "a"))
        print(self.calculateEdge(5))
        print(self.calculateSalary(day: 21))
    }

    func convertFahrenhiet(_ cel: Double) -> Double {
        var fahrenhiet = 0.0
        fahrenhiet = ( cel * 1.8) + 32
        return fahrenhiet
    }
    
    func calculateArea(_ edge1: Double , _ edge2: Double) -> Double{
        var area = 0.0
        area = edge1 * edge2
        return area
    }
   
    func factorial(_ x: Int ) -> Int {
        var factorial = 1
        for i in 1...x{
            factorial = factorial * i
        }
        return factorial
    }
    
    
    func findTheCharacter(_ word: String , _ character: Character) -> Int {
        var total = 0
        for char in word {
            if char.uppercased() == character.uppercased() {
                total = total + 1
            }
        }
        return total
    }
    
    func calculateEdge(_ edge: Int) -> Int {
        var angle =  (edge - 2) * 180
        return angle
    }
    
    func calculateSalary(day: Int ) -> Int {
        var salary = 0
        if day > 20 {
        salary = 1600 + (day - 20) * 160
        }else {
        salary = day * 80
        }
        return salary
    }
    
    func calculateGB(_ quota: Int) -> Int{
        var total = 0
        
        if quota > 50 {
            total = (quota - 50) * 4 + 100
        }else{
            total = 100
        }
        return total
    }
}

