LET comps = (
  FOR v IN facebook_nodes
    LET comp = (
      FOR vertex, edge IN 0..999 ANY v facebook_edges_new
        RETURN vertex._key
    )
    RETURN { node: v._key, component: comp }
)
RETURN LENGTH(comps)
