//
//  ViewController.swift
//  Ahorcado1
//
//  Created by Cetys on 19/10/18.
//  Copyright © 2018 cetys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let palabraSecreta : String = "cetys"
    
    @IBOutlet var palabraOculta: UILabel!
    
    @IBAction func letraPulsada(_ sender: UIButton) {
        let letra = Array((sender.currentTitle!).characters)[0]
        print(letra);
        chequeaLetra(letra: letra);
    }
    func chequeaLetra (letra : Character) ->Int{
        var aciertos = 0
        var auxiliar = ""
        var posicion = 0
        for p in palabraSecreta{
            if p == letra{
                print("SI ESTA")
                aciertos = aciertos + 1
                auxiliar.append(letra)
            }
            else{
                auxiliar.append(Array((palabraOculta.text!).characters)[posicion])
            }
            auxiliar = auxiliar + " "
            posicion = posicion + 1
        }
        
        palabraOculta.text  = auxiliar
        return aciertos
    }
    
    func poneGuionesEnLabel(){
        var auxiliar = ""
        for _ in palabraSecreta.characters{
            auxiliar + "_ "
        }
        palabraOculta.text = auxiliar
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

