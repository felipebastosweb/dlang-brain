module neural.node;
import std.stdio;
import std.parallelism;



/// Node tree
class Node
{
    string name; /// id of node
    Node root; /// root node
    Node[] nodes; /// um node pode ter varios nodes
    /// constructor
    this(string name, Node root = null, Node[] nodes = null) {
        this.name = name;
        this.root = root;
        this.nodes = nodes;
    }

    /// testa a inicializacao do node
    unittest {
        Node n = new Node("raiz");
        n.nodes = [
            new Node("vender"),
            new Node("comprar"),
            new Node("enviar email")
        ];
        assert(n.nodes.length == 3);
    }
}