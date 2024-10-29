//
//  RespostaViewController.swift
//  FirstProject
//
//  Created by Nova Labs on 10/26/24.
//

import UIKit

class RespostaViewController: UIViewController {

    var pontuacao: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mostrarResultado()

        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var totalPontos: UILabel!
    
    func mostrarResultado() {
    guard let pontuacao = pontuacao
    else { return }
        totalPontos.text = String(pontuacao)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
