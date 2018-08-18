
using Pkg
# Pkg.add("Pkg") #if Pkg package is not available

Pkg.add("CSV")
Pkg.add("Winston")
Pkg.add("ECharts")
Pkg.add("JuMP")
Pkg.add("LsqFit")

#=
**JuMP Extensions**  
JuMPeR.jl: for robust optimization
MultiJuMP.jl: for multi-objective optimization
JuMPChance.jl: for probabilistic chance constraints
StochDynamicProgramming.jl: for discrete-time stochastic optimal control problems
PolyJuMP.jl: for polynomial optimization
StructJuMP.jl: for block-structured optimization
NLOptControl.jl: for formulating and solving nonlinear optimal control problems
Developers: Thinking about how to name your JuMP extension? While we’re happy you’re building on top of JuMP, please do not use JuMP in the name of the package without explicit permission from the JuMP developers.
**Other Optimization**  
Optim.jl: implementations in Julia of standard optimization algorithms for unconstrained or box-constrained problems such as BFGS, Nelder-Mead, conjugate gradient, etc.
LsqFit.jl: least-squares non-linear curve fitting in Julia
JuliaSmoothOptimizers: a collection of tools primarily designed for developing solvers for smooth nonlinear optimization
NEOS.jl: an interface to the NEOS Optimization Server
BlackBoxOptim.jl: a derivative-free, global optimizer that supports multi-objective optimization problems
Pajarito - a state-of-the-art solver for mixed-integer convex optimization written in Julia
DifferentialDynamicProgramming.jl: for differential dynamic programming problems
OptimPack.jl: Julia bindings for the OptimPack library
SumOfSquares.jl: sum-of-squares reformulation for PolyJuMP.jl
**Equilibrium Problems**
VariationalInequality.jl: uses JuMP modeling language for variational inequality problems
Complementarity.jl: uses JuMP modeling language for linear/nonlinear/mixed complementarity problems and solves using a Julia interface to the PATH Solver. This package also enables @complements for modeling complementarity constraints.
NLsolve.jl: Julia solvers for systems of nonlinear equations and mixed complementarity problems
**Graph and Network**
LightGraphs.jl: defines a generic interface for graph types and an implementation with central algorithms.
LightGraphsFlows.jl: solves max-flow and min-cut problems on top of LightGraphs.jl.
NetworkFlows.jl: solves max-flow problems, min-cut problems, etc.
Munkres.jl: solves optimal assignment problems using the Hungarian algorithm
PowerModels.jl: solves various power network flow problems
RobustShortestPath.jl: solves robust shortest path problems
TrafficAssignment.jl: solves network user equilibrium problems
**Heuristics*8
Evolutionary.jl: evolutionary strategies and genetic algorithms
GeneticAlgorithms.jl: genetic algorithms
StochasticSearch.jl: stochastic local search algorithms such as simulated annealing and tabu search
TravelingSalesmanHeuristics.jl: a heuristic algorithm for solving the Traveling Salesman Problem (TSP)
=#




 Pkg.add("Plots")
 Pkg.add("Dates")
 Pkg.add("Images")


 Pkg.update()
 Pkg.status()
#=
pakAvailable= Pkg.available();
cd("G:/zd.git/JuliaLearning")
fname="./rtn/packageAvailable.txt";
f = open( fname, "a" ) 
writedlm(f,pakAvailable)
close(f)
=#
