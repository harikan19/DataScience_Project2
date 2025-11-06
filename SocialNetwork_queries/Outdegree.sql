FOR v IN facebook_nodes
  LET outdegree = LENGTH(
    FOR e IN facebook_edges_new
      FILTER e._from == v._id
      RETURN 1
  )
  RETURN { user: v._key, outdegree: outdegree }
