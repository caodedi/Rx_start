//
//  SectionViewController.swift
//  Rx_start
//
//  Created by caodedi on 2017/12/25.
//  Copyright © 2017年 caodedi. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa
import RxDataSources


class SectionViewController: UIViewController {

    let tableView: UITableView = UITableView(frame: UIScreen.main.bounds, style: .plain)
    let viewModel = ViewModel()
    let disposeBag = DisposeBag()
    let reuseIdentifier = "cess"

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")

        let dataSource = RxTableViewSectionedReloadDataSource<SectionModel<String, User>>(configureCell: {
            _, tableView, indexPath, user in
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
            cell.tag = indexPath.row
            cell.user = user
            return cell
        })
        
        view.addSubview(tableView)
        
        
        viewModel.getUsers()
            .bind(to: tableView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
        
    }

   

}
