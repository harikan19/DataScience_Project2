FOR v IN road_nodes
  LET deg = LENGTH(
    FOR e IN road_edges
      FILTER e._from == v._id OR e._to == v._id
      RETURN 1
  )
  FILTER deg >= 3
  RETURN { node: v._key, degree: deg }
