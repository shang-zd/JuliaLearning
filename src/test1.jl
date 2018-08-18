using Plots
gr()
x=-pi:.1:pi;
y=sin.(x);
y2=cos.(x);
plot(x,y,line=2)
plot!(x,y2,line=2)
fig=plot!(x,2*y,line=4)
xlabel!("x")
ylabel!("y")
title!("test plot - sine")


filename="fig.png";
savefig(fig, filename)