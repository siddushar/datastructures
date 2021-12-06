class Graph {
 constructor() {
   this.numberOfNodes = 0;
   this.adjacentList = {};
 }
  
  addVertext(node) {
    this.adjacentList[node] = [];
    this.numberOfNodes++;
  }
  
  addEdge(node1, node2) {
    this.adjacentList[node1].push(node2);
    this.adjacentList[node2].push(node1);
  }
  
  showConnections() {
    
  }
}

const graph = new Graph();
graph.addVertext('0')
graph.addVertext('1')
graph.addVertext('2')
graph.addVertext('3')
graph.addVertext('4')
graph.addVertext('5')
graph.addVertext('6')
