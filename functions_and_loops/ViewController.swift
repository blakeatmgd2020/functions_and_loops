//
//  ViewController.swift
//  functions_and_loops
//
//  Created by Blake Wallick on 12/7/21.
//

import UIKit

class ViewController: UIViewController {

	var myTimer: Timer!
	var timerCount = 10

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		//everything in here will run when the application is loaded

//		myTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(repeatFunction), userInfo: nil, repeats: true)

//		myFunction()
//		let num = addOne(number: 88)
//		print("Num is \(num)")
//
//		let numSum = sum(num1: 10, num2: 20, num3: 100)
//		print("Num Sum is \(numSum)")
//
//		myLoops()
//		myWhileLoops()

		print("Delay is 5 seconds")
		//DispatchQueue.main.asyncAfter(deadline: .now() + 5.0, execute: self.myDelayedPrintFunction())

		DispatchQueue.main.asyncAfter(deadline: .now() + 5.0, execute: self.myDelayedPrintFunction)
	}

	@objc func repeatFunction() {

		print("Hello there!")
		timerCount = timerCount - 1
		if timerCount < 5{
			myTimer.invalidate()
		}
	}

	func myDelayedPrintFunction(){
		print("late to the party!")
	}

	func myFunction() {
		print("My function is Run!")
	}

	func addOne(number: Int) -> Int {
		let newNumber = number + 1
		return newNumber
	}

	func sum(num1: Int, num2: Int, num3: Int) -> Int {
		let newNumber = num1 + num2 + num3
		return newNumber
	}
}

//for loops
func myLoops() {
	for _ in 1...5 {
		print("hi there")
	}

	for i in stride(from: 1, to: 10, by: 2) {
		print(i)
	}
}

func myWhileLoops() {
	var a = 2
//	while(a < 30){
//		print(a)
//		a = a + 1
//	}
	repeat {
		a = a * a
		print(a)
	} while(a < 1000)
	print("done with loop")
}




