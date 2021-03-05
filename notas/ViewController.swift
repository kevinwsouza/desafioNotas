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
    @IBOutlet weak var lbStudentGrade: UILabel!
    
   
    var grade: Float = 0
    var student = Student(nameStudent: "", scholarGrade: 0, gradeArray: [])
    var tfNameSV = " "
    var tfGradeSV = " "
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func calculate(_ sender: Any) {
        if let primeiro = Float(lbPTrimestre.text!), let segundo = Float(lbSTrimestre.text!), let terceiro = Float(lbTTrimestre.text!){
    
                
            if ((primeiro >= 0 && primeiro <= 10) && (segundo >= 0 && segundo <= 10) && (terceiro >= 0 && terceiro <= 10)){
              
                student.gradeArray.removeAll()
                student.gradeArray.append(primeiro)
                student.gradeArray.append(segundo)
                student.gradeArray.append(terceiro)
                
                
                grade = sumArray(array: student.gradeArray) / 3.0
                showResult()
            }else{
                let erro = "Insira uma nota entre 0 e 10"
                lbconcept.text = "\(erro)"
            }
            lbconcept.isHidden = false
        }
        
    }
  
    func sumArray(array:[Float]) -> Float {
        return array[0] + array[1] + array[2]
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
        lbStudentName.text = "O " + "\(String(tfNameSV))" + " está"
        lbconcept.text = "\(String(format: "%.2f", grade)) : \(text)"
        lbStudentGrade.text = "\(String(tfGradeSV))ª " + "Série"
        
        lbStudentGrade.isHidden = false
        lbStudentName.isHidden = false
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbconcept.isHidden = true
        lbStudentGrade.isHidden = true
        lbStudentName.isHidden = true
        // Do any additional setup after loading the view.
    }
    
}

