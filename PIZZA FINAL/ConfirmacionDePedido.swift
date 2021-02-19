//
//  ConfirmacionDePedido.swift
//  PIZZA FINAL
//
//  Created by Nicolas Russi on 17/02/21.
//  Copyright © 2021 Nicolas Russi. All rights reserved.
//

import UIKit

class ConfirmacionDePedido: UIViewController {

    
    @IBOutlet weak var Tamaño: UILabel!
    @IBOutlet weak var Masa: UILabel!
    @IBOutlet weak var Queso: UILabel!
    @IBOutlet weak var IngredientesLabbel: UILabel!
    @IBOutlet weak var ConfirmarButton: UIButton!
    @IBOutlet weak var ModificarPedido: UIButton!
    @IBOutlet weak var Exito: UILabel!
    
    var tamanoPizza: String? = nil
    var tipoMasa: String? = nil
    var tipoQueso: String? = nil
    var ingredientes: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Confirmación"
        Exito.isHidden = true
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func viewWillAppear(_ animated: Bool) {
        Tamaño.text = String(tamanoPizza!)
        Masa.text = String(tipoMasa!)
        Queso.text = String(tipoQueso!)
        var ingredientesSalida: String = ""
        var i = 0
        while i < ingredientes.count - 1 {
            ingredientesSalida += ingredientes[i] + ", "
            i += 1
        }
        ingredientesSalida += ingredientes[i]
        IngredientesLabbel.text = String(ingredientesSalida)
}

  
    @IBAction func confirmar(_ sender: Any) {
        ConfirmarButton.isHidden = true
        ModificarPedido.isHidden = true
        Exito.isHidden = false
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
