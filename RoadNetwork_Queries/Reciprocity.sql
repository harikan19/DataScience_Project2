LET totalEdges = LENGTH(road_edges)
LET reciprocalEdges = LENGTH(
  FOR e IN road_edges
    FILTER LENGTH(
      FOR r IN road_edges
        FILTER r._from == e._to AND r._to == e._from
        RETURN 1
    ) > 0
    RETURN 1
)
RETURN { totalEdges, reciprocalEdges, reciprocity: reciprocalEdges / totalEdges }
