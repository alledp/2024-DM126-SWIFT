//
//  PerguntasViewController.swift
//  FirstProject
//
//  Created by Nova Labs on 10/26/24.
//

import UIKit

class PerguntasViewController: UIViewController {

    var pontuacao = 0
    var perguntaAtual = 0
    //var tituloPergunta = struct Perguntas
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarPergunta()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var textoPergunta: UILabel!
    
    @IBAction func chosenAnswer(_ sender: UIButton) {
        print(sender.tag)
        if(sender.tag == 0 ){
            pontuacao -= 1
        }else if(sender.tag == 2){
            pontuacao += 1
        }
        
        if (perguntaAtual < perguntas.count - 1) {
            perguntaAtual += 1
            configurarPergunta()
        }else{
            //TESTE CONCLUIDO
            navegaParaTelaDesempenho()
        }
    }
    

    @IBOutlet var btAnswer: [UIButton]!
    
    func configurarLayout(){
        textoPergunta.numberOfLines = 0
        textoPergunta.textAlignment = .center
        
        for bt in btAnswer {
            bt.tintColor = .white
        }
    }
    
    func configurarPergunta(){
        textoPergunta.text = perguntas[perguntaAtual].titulo
        for bt in btAnswer {
            let tituloBt = perguntas[perguntaAtual].respostas[bt.tag]
            bt.setTitle(tituloBt, for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let respostaVC = segue.destination as? RespostaViewController else { return }
        respostaVC.pontuacao = pontuacao
    }
    
    func navegaParaTelaDesempenho() {
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
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
