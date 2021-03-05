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
    
    var nameText = " "
    var gradeText = " "
    var student = Student(nameStudent: "", scholarGrade: 0, gradeArray: [])
    
    @IBAction func btSignIn(_ sender: Any) {
        self.nameText = tfNameStudent.text!
        self.gradeText = tfGradeStudent.text!
        if String(tfNameStudent.text!) != " " , Int(tfGradeStudent.text!) != nil{
            performSegue(withIdentifier: "segueGrades", sender: self)
            
        } else {
            
            let erro = "Insira Nome de aluno ou Série Válidos"
            lbErro.text = "\(erro)"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! ViewController
        vc.tfNameSV = self.nameText
        vc.tfGradeSV = self.gradeText
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
