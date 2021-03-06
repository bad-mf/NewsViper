//
//  StorageServiceProtocol.swift
//  viper-rss
//
//  Created by user on 30.03.2020.
//  Copyright © 2020 smirnov. All rights reserved.
//

import Foundation

protocol StorageService: class {
    func save(entity: RSSEntity)
    func update(entity: RSSEntity)
    func subscribe(onInsert: @escaping ((RSSEntity) -> Void))
    func listFromStorage(with filter: Sources, completion: @escaping (Result<[RSSEntity], StorageServiceError>) -> Void)
}
