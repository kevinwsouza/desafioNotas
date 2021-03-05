//
//  ViewController.swift
//  notas
//
//  Created by Kevin willian Jorge souza on 28/02/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbPTrimestre: UITextField!
    @IBOutlet weak var lbSTrimestre: UITextField!
    @IBOutlet weak var lbTTrimestre: UITextField!
    @IBOutlet weak var lbconcept: UILabel!
    @IBOutlet weak var lbStudentName: UILabel!
    
    var grade: Float = 0
    var student = Student(nameStudent: "", scholarGrade: 0, gradeArray: [])
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func calculate(_ sender: Any) {
        if let primeiro = Float(lbPTrimestre.text!), let segundo = Float(lbSTrimestre.text!), let terceiro = Float(lbTTrimestre.text!){
    
                
            if ((primeiro >= 0 && primeiro <= 10) && (segundo >= 0 && segundo <= 10) && (terceiro >= 0 && terceiro <= 10)){
              
                
                student.gradeArray[0] = primeiro
                student.gradeArray[1] = segundo
                student.gradeArray[2] = terceiro
                
                func sumArray(array:Float) -> Float {
                    let sumArray = (student.gradeArray[0]) + (student.gradeArray[1]) + (student.gradeArray[2])
                }
                
                grade = sumArray / 3.0
                showResult()
            }else{
                let erro = "Insira uma nota entre 0 e 10"
                lbconcept.text = "\(erro)"
            }
            
        }
        
    }
  
    func showResult(){
        var text: String = ""
        switch grade {
        case 0...5:
            text = "Reprovado"
        case 5.1..<7.0:
            text = "Em Exame"
        default:
            text = "Aprovado"
        }
        lbStudentName.text = "O" + "\(String(student.nameStudent))" + "está"
        
        lbconcept.text = "\(String(format: "%.2f", grade)) : \(text)"
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

