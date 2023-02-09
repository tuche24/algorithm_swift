//: [Previous](@previous)

//:# Tree 말단노드까지 가장 짧은 거리
import Foundation

class Node {
    var data: Int?
    var lt: Node?
    var rt: Node?
    
    init(_ data: Int?) {
        self.data = data
    }
}

var tree = Node(1)
tree.lt = Node(2)
tree.rt = Node(3)
tree.lt?.lt = Node(4)
tree.lt?.rt = Node(5)

func DFS(l: Int, node: Node?) -> Int {
    guard let node = node else { return l }
    if (node.lt == nil && node.rt == nil) { return l }
    else {
        return min(DFS(l: l+1, node: node.lt), DFS(l: l+1, node: node.rt))
    }
}

print(DFS(l: 0, node: tree))



//: [Next](@next)
