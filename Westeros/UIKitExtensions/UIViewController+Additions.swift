//
//  UIViewController+Additions.swift
//  Westeros
//
//  Created by Irma Blanco on 28/02/2018.
//  Copyright © 2018 Irma Blanco. All rights reserved.
//


import UIKit

/*
 Vamos a poner una extension sobre UIViewController que va a coger el View controller y envolverlo dentro de un NavigationController y devolverme dicho NavigationController
 
 */
extension UIViewController {
    func wrappedInNavigation() -> UINavigationController {
        return UINavigationController(rootViewController: self)
    }
}
