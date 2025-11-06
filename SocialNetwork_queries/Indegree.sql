FOR v IN facebook_nodes
  LET indegree = LENGTH(
    FOR e IN facebook_edges_new
      FILTER e._to == v._id
      RETURN 1
  )
  RETURN { user: v._key, indegree: indegree }
