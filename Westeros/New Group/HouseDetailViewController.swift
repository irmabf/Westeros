//
//  HouseDetailViewController.swift
//  Westeros
//
//  Created by Irma Blanco on 23/02/2018.
//  Copyright © 2018 Irma Blanco. All rights reserved.
//

import UIKit

class HouseDetailViewController: UIViewController {
    
    // Mark: - Outlets
    @IBOutlet weak var houseNameLabel: UILabel!
    @IBOutlet weak var sigilImageView: UIImageView!
    @IBOutlet weak var wordsLabel: UILabel!
    
    // Mark: - Properties
    let model: House
    
    // Mark: - Initialization
    init(model: House) {
        //Primero limpias tu propio desorden
        self.model = model
        //Lamas a super
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
        title = model.name
    }
    //Arreglar problema con los nil
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // Mark: - Life Cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        syncModelWithView()
    }
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        syncModelWithView()
        
    }*/
    
    // Mark: - Sync
    func syncModelWithView(){
        // Model -> View
        houseNameLabel.text = "House \(model.name)"
        sigilImageView.image = model.sigil.image
        wordsLabel.text = model.words
        
        
    }

}
