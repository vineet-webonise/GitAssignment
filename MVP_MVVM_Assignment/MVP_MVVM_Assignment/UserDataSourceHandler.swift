//
//  UserDataSourceHandler.swift
//  MVP_MVVM_Assignment
//
//  Created by admin on 22/09/16.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit

class UserDataSourceHandler: NSObject, UITableViewDelegate, UITableViewDataSource {
    var userListViewModelObj :UserListViewModel!
    var userListModel :UserListModel!
    
    private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return userListViewModelObj.getCountOfUsers()
        //return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UserListTableViewCell = tableView.dequeueReusableCell(withIdentifier: "userCell") as! UserListTableViewCell!
        userListModel = userListViewModelObj.getUserObjectForIndex(index: indexPath.row)
        cell.userName?.text = userListModel.userName
        cell.userEmail?.text = userListModel.userEmail
        cell.userBody?.text = userListModel.userBody
        
        return cell
    }
}
