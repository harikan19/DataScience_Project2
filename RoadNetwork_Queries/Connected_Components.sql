LET totalNodes = LENGTH(road_nodes)
LET connectedPairs = LENGTH(
  FOR e IN road_edges
    RETURN DISTINCT [e._from, e._to]
)
RETURN { totalNodes, connectedPairs }
