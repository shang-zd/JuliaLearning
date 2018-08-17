
using Pkg
# Pkg.add("Pkg") #if Pkg package is not available
# pakAvailable= Pkg.available();
# Pkg.add("Plots")
# Pkg.add("Dates")

# Pkg.update()
# Pkg.status()
cd("G:/zd.git/JuliaLearning")
fname="./rtn/packageAvailable.txt";
f = open( fname, "a" ) 
writedlm(f,pakAvailable)
close(f)