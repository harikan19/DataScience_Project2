FOR v IN facebook_nodes
  LET degree = LENGTH(
    FOR e IN facebook_edges_new
      FILTER e._from == v._id OR e._to == v._id
      RETURN 1
  )
  RETURN { user: v._key, degree: degree }
