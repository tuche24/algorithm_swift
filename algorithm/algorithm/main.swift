//
//  main.swift
//  algorithm
//
//  Created by Hyeonsu Jeong on 2023/02/13.
//

import Foundation

let a = readLine()
print(a)

public class BinaryNode<Element> {

  public var value: Element
  public var leftChild: BinaryNode?
  public var rightChild: BinaryNode?

  public init(value: Element) {
    self.value = value
  }
}
//til
