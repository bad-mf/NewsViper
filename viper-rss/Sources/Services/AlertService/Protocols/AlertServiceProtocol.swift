//
//  AlertServiceProtocol.swift
//  viper-rss
//
//  Created by user on 27.03.2020.
//  Copyright © 2020 smirnov. All rights reserved.
//

import UIKit

protocol AlertServiceProtocol {
    func showDialogAlert(vc: UIViewController, title: String, message: String?, acceptAction: @escaping (() -> Void))
    func showAlert(vc: UIViewController, title: String, message: String?)
    func showTimerPicker(vc: UIViewController, acceptAction: @escaping ((Date) -> Void))
}
