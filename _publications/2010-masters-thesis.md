---
id: Bischof2010
title: "Implementation and Optimisation of Queries in XSPARQL"
authors:
  - Stefan Bischof
year: 2010
category: thesis
degree: Master's thesis
venue: Vienna University of Technology, Austria
links:
  - label: metadata
    url: http://hdl.handle.net/20.500.12708/11574
  - label: PDF
    url: https://repositum.tuwien.at/bitstream/20.500.12708/11574/2/Bischof%20Stefan%20-%202010%20-%20Implementation%20and%20optimisation%20of%20queries%20in%20XSPARQL.pdf
abstract: |
  XSPARQL is a language for transforming data between XML and RDF. XML is a widely used format for data exchange. RDF is a data format based on directed graphs, primarily used to represent Semantic Web data. XSPARQL is built by combining the strengths of the two corresponding query languages XQuery for XML, and SPARQL for RDF. In this thesis we present two XSPARQL enhancements called Constructed Dataset and Dataset Scoping, the XDEP dependent join optimisation, and a new XSPARQL implementation. Constructed Dataset allows to create and query intermediary RDF graphs. The Dataset Scoping enhancement provides an optional fix for unintended results which may occur when evaluating complex XSPARQL queries containing nested SPARQL query parts. The XSPARQL implementation works by first rewriting an XSPARQL query to XQuery expressions containing interleaved calls to a SPARQL engine for processing RDF data. The resulting query is then evaluated by standard XQuery and SPARQL engines. The dependent join optimisation XDEP is designed to reduce query evaluation time for queries demanding repeated evaluation of embedded SPARQL query parts. XDEP minimises the number of interactions between the XQuery and SPARQL engines by bundling similar queries and let the XQuery engine select relevant data on its own. We did an experimental evaluation of our approach using an adapted version of the XQuery benchmark suite XMark. We will show that the XDEP optimisation reduces the evaluation time of all compatible benchmark queries. Using this optimisation we could evaluate certain XSPARQL queries by two orders of magnitude faster than with unoptimised XSPARQL.
---
