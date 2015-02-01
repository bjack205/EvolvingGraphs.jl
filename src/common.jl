abstract EvolvingGraph


abstract EvolvingVertexList <: EvolvingGraph

abstract AdjacencyTensor <: EvolvingGraph


##########################################
#
#  edge types
#
##########################################


immutable TimeEdge{T}
    index::Nullable{Int}
    source::Nullable{T}
    target::Nullable{T}
    time::Real
end

edge_index(e::TimeEdge) = e.index
source(e::TimeEdge) = e.source
target(e::TimeEdge) = e.target
edge_time(e::TimeEdge) = e.time

##############################################
#
# vertex types
#
##############################################


immutable TimeKeyVertex{T}
    index::Nullable{Int}
    key::Nullable{T}
    time::Real
end

vertex_index(v::TimeKeyVertex) = v.index
vertex_time(v::TimeKeyVertex) = v.time




