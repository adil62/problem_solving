/**
 * Graph BFS simple example ,
 */

let graph = new Map();

graph.set("adil", ["nadeer", "rouf"]);
graph.set("nadeer", ["sahad", "adil"]);
graph.set("rouf", ["kuku"]);

console.log(graph);

function bfs(graph, startNode) {
  let searchQueue = [startNode];
  let searched = [];

  while (searchQueue.length !== 0) {
    let thisVertece = searchQueue.shift();
    if (searched.includes(thisVertece)) continue;

    searched.push(thisVertece);

    console.log("vertece", thisVertece);
    let thisVerteceEdges = graph.get(thisVertece);

    if (thisVerteceEdges) searchQueue = [...searchQueue, ...thisVerteceEdges];
  }
}

bfs(graph, "adil");
