###############################
#
# graph type: edge list
#
###############################

type GenericEvolvingEdgeList{V, E, T, VList, EList, TList} <: EvolvingGraph{V, E, T}
    is_directed::Bool
    vertices::VList
    edges::EList
    times::Tlist
end

typealias EvolvingEdgeList{V, E, T} GenericEvolvingEdgeList{V, E, T, Matrix{V}, Matrix{E}, Vector{T}}

# interfaces

is_directed(g::GenericTimeEdgeList) = g.is_directed

num_vertices(g::GenericEvolvingEdgeList) = length(g.edges)
vertices(g::GenericEvolvingEdgeList) = g.vertices

num_edges(g::GenericEvolvingEdgeList) = length(g.edges)
edges(g::GenericEvolvingEdgeList) = g.edges

# mutation

add_vertex!{V}(g::GenericEvolvingEdgeList{V}, v::V) = (push!(g.vertices, v); v)