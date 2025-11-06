LET nodeCount = LENGTH(road_nodes)
LET edgeCount = LENGTH(road_edges)
LET density = edgeCount / (nodeCount * (nodeCount - 1))
RETURN {
  nodeCount,
  edgeCount,
  density
}
