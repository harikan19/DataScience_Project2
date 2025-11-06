FOR v IN road_nodes
  LET indeg = LENGTH(
    FOR e IN road_edges
      FILTER e._to == v._id
      RETURN 1
  )
  COLLECT indegree = indeg INTO group
  LET count = LENGTH(group)
  SORT indegree ASC
  RETURN { indegree, count }
