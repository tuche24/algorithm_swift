//: [Previous](@previous)

//:# 이진트리순회

import Foundation

class Node {
    var nodeData: Int?
    var lt: Node?
    var rt: Node?
    
    init(value: Int) {
        nodeData = value
        lt = nil
        rt = nil
    }
}

var tree: Node = Node(value: 1)
tree.lt = Node(value: 2)
tree.rt = Node(value: 3)
tree.lt?.lt = Node(value: 4)
tree.lt?.rt = Node(value: 5)
tree.rt?.lt = Node(value: 6)
tree.rt?.rt = Node(value: 7)

// 전위순회
func DFS_전위(root: Node?) {
    if root == nil {
        return
    } else {
        print(root!.nodeData!, terminator: " ")
        DFS_전위(root: root?.lt)
        DFS_전위(root: root?.rt)
    }
}

// 중위순회
func DFS_중위(root: Node?) {
    if root == nil {
        return
    } else {
        DFS_중위(root: root?.lt)
        print(root!.nodeData!, terminator: " ")
        DFS_중위(root: root?.rt)
    }
}

// 후위순회
func DFS_후위(root: Node?) {
    if root == nil {
        return
    } else {
        DFS_후위(root: root?.lt)
        DFS_후위(root: root?.rt)
        print(root!.nodeData!, terminator: " ")
    }
}

DFS_전위(root: tree)
print("")
DFS_중위(root: tree)
print("")
DFS_후위(root: tree)



//: [Next](@next)
