//
//  Student.swift
//  structureandclasses
//
//  Created by MacStudent on 2019-06-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Student
{
    var studentId: Int = 0
    var firstName: String?
    var lastName: String!
    var gender: Bool = false
    var result: String = ""
    
    func setValues(){
        self.studentId = 1
        self.firstName = "Ujwal"
        self.lastName = "Arora"
        self.gender = true
        self.result = "PASS"
    }
    func dislay(){
        print("Student ID : \(self.studentId)")
        print("Student First Name : \(self.firstName ?? "[No First Name]")")
        print("Student Last Name : \(self.lastName)")
        print("Student Gender : \(self.gender)")
        print("Student Result : \(self.result)")
    }
    
    func printData(){
        print("Student ID : \(self.studentId)")
        print("Student First Name : \(String(describing: self.firstName ?? "Hello"))") // instrad of  !  we use ?? . coz if there is nil value the it will print "Hello"
        print("Student Last Name : \(self.lastName!)")
        print("Student Gender : \(self.gender)")
        print("Student Result : \(self.result)")
    }
    func getFirstName() -> String{
        
        //result self.firstName ?? "No Name"
        // result self.firstName! // this will crash if firstName is null
        // correct way---------adding a "Check"--------
        if let name = self.firstName{ // use in case of cheching object of class is nuill or not here in our case to check "s1" obj
            return name
        }
        
        return "No Name"
    }
    
}
