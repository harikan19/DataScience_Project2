# DataScience_Project2
Unsupervised Graph Analysis: A Comparative Study of Social and Road Networks using ArangoDB

## Overview
This project performs **large-scale graph analysis** using the **ArangoDB graph database** on two real-world datasets — a **Social Network (Facebook)** and a **Road Network (Pennsylvania RoadNet)**.  
It demonstrates how ArangoDB’s **AQL (Arango Query Language)** can be used to compute, analyze, and compare key **graph properties** across distinct network domains.

---

## Objectives
- Import and model Facebook and RoadNet datasets in ArangoDB.  
- Execute AQL queries to compute six graph properties:
  1. Node Degree Distribution  
  2. In-Degree and Out-Degree  
  3. Network Density  
  4. Reciprocity  
  5. Connected Components  
  6. Core Decomposition  
- Compare social and physical network structures.  
- Evaluate performance and scalability of ArangoDB for large graph analytics.  

---

## Datasets
### 1. Social Network (Facebook)
- **Source:** [Stanford Network Repository (ego-Facebook)](https://snap.stanford.edu/data)
- **Collections:**  
  - `facebook_nodes`: user IDs and connections  
  - `facebook_edges`: friendship relationships  
- **Size:** ~4,000 nodes, ~88,000 edges  
- **Use Case:** Analyze social connectivity, degree variation, and reciprocity.

### 2. Road Network (Pennsylvania RoadNet)
- **Source:** [Stanford SNAP RoadNet-PA](https://snap.stanford.edu/data)
- **Collections:**  
  - `road_nodes`: road intersections  
  - `road_edges`: road segments  
- **Size:** ~3.9M nodes, ~3M edges  
- **Use Case:** Study physical connectivity, sparsity, and structural balance.

---

## ⚙️ Implementation
- **Database:** ArangoDB 3.11.8 (Community Edition)  
- **Graph Definitions:**
  - `social_network_graph` → `facebook_nodes` ↔ `facebook_edges`
  - `road_network_graph` → `road_nodes` ↔ `road_edges`
- **Tools Used:**  
  - ArangoDB Web UI for graph setup and visualization  
  - AQL Editor for analytical queries  
  - `arangoimport` CLI for dataset upload  
- **File Format:** `.txt` / `.csv` (Tab-separated with `_from`, `_to` fields)

---

## Results Summary

| Graph Property | Social Network (Facebook) | Road Network (Pennsylvania) | Observation |
|----------------|---------------------------|------------------------------|--------------|
| **Node Degree Distribution** | High variation (users with many links) | Low variation (2–4 roads per node) | Graph A is more variable than Graph B due to diverse user connections. |
| **In-Degree / Out-Degree** | Asymmetric (user relationships) | Balanced (bidirectional roads) | Graph A shows asymmetry; Graph B is symmetric. |
| **Network Density** | Higher | Lower | **Graph A is denser than Graph B** since users connect freely vs. fixed roads. |
| **Reciprocity** | High (mutual friendships) | Slightly lower | **Reciprocity in Graph A is higher** than in Graph B. |
| **Connected Components** | Multiple clusters | One main component | **Graph A has more connected components** due to unlinked users. |
| **Core Decomposition** | Deep core with hubs | Shallow core | **Graph A has a larger core** because of dense communities. |

---

## Key Findings
- **Social networks** show power-law degree distribution and high clustering.  
- **Road networks** are uniform, symmetric, and geographically constrained.  
- ArangoDB efficiently handled millions of nodes and edges, proving scalable for graph analytics.  
- Query performance was optimized with indexing and efficient AQL traversal.

---

## Challenges Faced
- Data cleaning and formatting for large text datasets.  
- Managing `_from` / `_to` references for edge collections.  
- Execution time for large queries (especially degree distribution).  
- Memory tuning for large graph imports.  

---

## Future Work
- Improve AQL performance through advanced indexing and caching.  
- Add visualization of node density and community clusters.  
- Extend analysis to **dynamic or temporal graphs**.  
- Test ArangoDB scalability on even larger datasets.  

---

## Team & Contributions

| Name | Contribution | % |
|------|---------------|---|
| **Harika Nalubandhu** | Imported and processed Facebook & RoadNet datasets, ran AQL queries, verified results | 100% |
| **Lohitha Ratakonda** | Created collections, linked edges, configured ArangoDB setup | 100% |
| **Marthanda Pradeep** | Cleaned datasets, ensured correct edge mapping | 100% |
| **Sahithi Banda** | Compared metrics and summarized results | 100% |
| **Sai Kiran Anugula** | Drafted results and organized analysis | 100% |
| **Likhith Mahankali** | Compiled report, screenshots, and formatting | 100% |

---

## References
1. Stanford Network Repository (SNAP): Facebook and RoadNet-PA datasets — [https://snap.stanford.edu/data](https://snap.stanford.edu/data)  
2. ArangoDB Documentation (AQL): [https://www.arangodb.com/docs/stable](https://www.arangodb.com/docs/stable)  
3. Project Repository: [https://github.com/harikan19/DataScience_Project2](https://github.com/harikan19/DataScience_Project2)

---
