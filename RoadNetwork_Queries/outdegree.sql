FOR v IN road_nodes
  LET outdeg = LENGTH(
    FOR e IN road_edges
      FILTER e._from == v._id
      RETURN 1
  )
  COLLECT outdegree = outdeg INTO group
  LET count = LENGTH(group)
  SORT outdegree ASC
  RETURN { outdegree, count }
