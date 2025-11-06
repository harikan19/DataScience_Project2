FOR v IN road_nodes
  LET deg = LENGTH(
    FOR e IN road_edges
      FILTER e._from == v._id OR e._to == v._id
      RETURN 1
  )
  COLLECT degree = deg INTO group
  LET count = LENGTH(group)
  SORT degree ASC
  RETURN { degree, count }
