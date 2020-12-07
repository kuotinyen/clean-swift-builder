//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_productName___DisplayLogic: AnyObject { }

class ___VARIABLE_productName___ViewController: UIViewController, ___VARIABLE_productName___DisplayLogic {
    var interactor: ___VARIABLE_productName___BusinessLogic?
    var router: (___VARIABLE_productName___RoutingLogic & ___VARIABLE_productName___DataPassing)?

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    private func setup() {
        let viewController = self
        let interactor = ___VARIABLE_productName___Interactor()
        let presenter = ___VARIABLE_productName___Presenter()
        let router = ___VARIABLE_productName___Router()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}
