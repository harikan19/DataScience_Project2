LET numNodes = LENGTH(facebook_nodes)
LET numEdges = LENGTH(facebook_edges_new)
RETURN { 
  nodes: numNodes, 
  edges: numEdges, 
  density: (2 * numEdges) / (numNodes * (numNodes - 1)) 
}
