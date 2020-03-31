//
//  DependencyContainer.swift
//  viper-rss
//
//  Created by user on 29.03.2020.
//  Copyright © 2020 smirnov. All rights reserved.
//

import Foundation

class ModuleDependencyContainer {
    private lazy var alertService = AlertServiceImpl()
    private lazy var rssParser = RSSParserServiceImpl()
    private lazy var feedCellLayoutCalculator = FeedCellLayoutCalculatorImpl()
}

extension ModuleDependencyContainer: ModuleFactoryProtocol {
    func assemblyDetailModule(with url: String) -> DetailsViewProtocol {
        let view = DetailsViewImpl(alertService: alertService)
        let interactor = DetailsInteractorImpl()
        let presenter = DetailsPresenterImpl(url: url)
        let router = DetailsRouterImpl()
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router
        interactor.presenter = presenter
        router.presenter = presenter
        router.viewController = view
        return view
    }
    
    func assemblyFeedModule() -> FeedViewProtocol {
        let view = FeedViewImpl(alertService: alertService)
        let interactor = FeedInteractorImpl(rssParser: rssParser)
        let presenter = FeedPresenterImpl(feedCellLayoutCalculator: feedCellLayoutCalculator)
        let router = FeedRouterImpl()
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router
        interactor.presenter = presenter
        router.presenter = presenter
        router.viewController = view
        return view
    }
    
    func assemblySettingsModule() -> SettingsViewProtocol {
        let view = SettingsViewImpl(alertService: alertService)
        let interactor = SettingsInteractorImpl()
        let presenter = SettingsPresenterImpl()
        let router = SettingsRouterImpl()
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router
        interactor.presenter = presenter
        router.presenter = presenter
        router.viewController = view
        return view
    }
    
    func assemblyMainModule() -> MainViewProtocol {
        let view = MainViewImpl()
        let interactor = MainInteractorImpl()
        let presenter = MainPresenterImpl()
        let router = MainRouterImpl()
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router
        interactor.presenter = presenter
        router.presenter = presenter
        router.viewController = view
        presenter.setupViewControllers()
        return view
    }
    
    func buildStartModule() -> StartViewProtocol {
        let view = StartViewImpl()
        let interactor = StartInteractorImpl()
        let presenter = StartPresenterImpl()
        let router = StartRouterImpl()
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router
        interactor.presenter = presenter
        router.presenter = presenter
        router.viewController = view
        return view
    }
}
