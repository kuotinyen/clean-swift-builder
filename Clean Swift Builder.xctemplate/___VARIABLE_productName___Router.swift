//
//  ___FILENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_productName___RoutingLogic { }

protocol ___VARIABLE_productName___DataPassing {
    var dataStore: ___VARIABLE_productName___DataStore? { get }
}

class ___VARIABLE_productName___Router: ___VARIABLE_productName___RoutingLogic, ___VARIABLE_productName___DataPassing {
    weak var viewController: UIViewController?
    var dataStore: ___VARIABLE_productName___DataStore?
}
