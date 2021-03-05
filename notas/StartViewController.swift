//
//  StartViewController.swift
//  notas
//
//  Created by Kevin willian Jorge souza on 04/03/21.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var lbErro: UILabel!
    @IBOutlet weak var tfNameStudent: UITextField!
    @IBOutlet weak var tfGradeStudent: UITextField!
    
    var student = Student(nameStudent: "", scholarGrade: 0, gradeArray: [])
    
    @IBAction func btSignIn(_ sender: Any) {
        if String(tfNameStudent.text!) != " ", Int(tfGradeStudent.text!) != nil{
            performSegue(withIdentifier: "segueGrades", sender: nil)
            
        } else {
            let erro = "Insira Nome de aluno ou Série Válidos"
            lbErro.text = "\(erro)"
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
