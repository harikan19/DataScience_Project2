LET k = 3     // change this to any threshold (e.g., 2, 4, 5)

FOR v IN facebook_nodes
  LET degree = LENGTH(
    FOR e IN facebook_edges_new
      FILTER e._from == v._id OR e._to == v._id
      RETURN 1
  )
  FILTER degree >= k
  RETURN { node: v._key, degree }
