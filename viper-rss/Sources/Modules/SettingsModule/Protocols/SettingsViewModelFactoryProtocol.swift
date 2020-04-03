//
//  SettingsViewModelFactoryProtocol.swift
//  viper-rss
//
//  Created by user on 03.04.2020.
//  Copyright © 2020 smirnov. All rights reserved.
//

import Foundation

protocol SettingsViewModelFactoryProtocol {
    func produceViewModel(by indexPath: IndexPath) -> SettingsTimerViewModelProtocol?
}
