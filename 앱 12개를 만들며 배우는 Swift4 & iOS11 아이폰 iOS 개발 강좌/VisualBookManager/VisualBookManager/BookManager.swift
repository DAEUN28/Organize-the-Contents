//
//  BookManager.swift
//  BookManager
//
//  Created by JinYoung Choi on 11/23/17.
//  Copyright © 2017 fapeng. All rights reserved.
//

import Foundation

class BookManager{
    var bookList = [Book]()
    
    func registerBook(bookObject:Book) {
        bookList += [bookObject]
    }
    
    func showAllBooks() -> String {
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Name : \(bookTemp.name!)\n"
            strTemp += "Genre : \(bookTemp.genre!)\n"
            strTemp += "Author : \(bookTemp.author!)\n"
            strTemp += "--------------\n"
        }
        return strTemp
    }
    
    func countBooks() -> Int {
        return bookList.count
    }
    
    func searchBook(name:String) -> String?{
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name! == name {
                strTemp += "Name : \(bookTemp.name!)\n"
                strTemp += "Genre : \(bookTemp.genre!)\n"
                strTemp += "Author : \(bookTemp.author! )\n"
                strTemp += "--------------\n"
                return strTemp
            }
        }
        return nil
    }
    
    func removeBook(name:String){
        for (index,value) in bookList.enumerated() {
            if value.name! == name {
                bookList.remove(at: index)
            }
        }
    }
}
