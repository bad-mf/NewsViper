//
//  AlertService.swift
//  viper-rss
//
//  Created by user on 27.03.2020.
//  Copyright © 2020 smirnov. All rights reserved.
//

import UIKit

protocol AlertService {
    func showDialogAlert(vc: UIViewController, title: String, message: String?, acceptAction: @escaping (() -> Void))
    func showAlert(vc: UIViewController, message: String?)
    func showTimerPicker<T>(vc: UIViewController, values: [T], acceptAction: @escaping ((T) -> Void))
}
