LET total_edges = LENGTH(facebook_edges_new)
LET reciprocal_edges = LENGTH(
  FOR e IN facebook_edges_new
    FILTER LENGTH(
      FOR r IN facebook_edges_new
        FILTER r._from == e._to AND r._to == e._from
        LIMIT 1
        RETURN 1
    ) > 0
    RETURN 1
)
RETURN {
  total_edges,
  reciprocal_edges,
  reciprocity_ratio: reciprocal_edges / total_edges
}
