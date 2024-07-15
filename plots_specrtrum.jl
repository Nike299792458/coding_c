using  DataFrames, DelimitedFiles, LaTeXStrings, Plots, Printf, Statistics

default(fontfamily = "Computer Modern",
background_color = :transparent,
foreground_color = :black,
background_color_legend = nothing,
margin=5Plots.mm
)

path = "/Users/nicoletognetti/uni/Magistrale/MetodiNumerici/simulations_c/"
cd(path)
sample, Nt= 100000000, 60.
fname = @sprintf "data_spectrum_sample%.1eNt%i.txt" sample Nt 

lines = readlines(fname)

p = plot(legend=:best, dpi=600)

t_dist = [parse(Int64, split(line, ' ')[1]) for line in lines[2:end-1]]
gap= [parse(Float64, split(line, ' ')[2]) for line in lines[2:end-1]]
gapv= [parse(Float64, split(line, ' ')[3]) for line in lines[2:end-1]]

scatter!(p, t_dist ,gap, yerror=gapv, markershape=:plus, label = L"N_t=N_s=60")
xlabel!(p,"spacing")
ylabel!(p,L"\frac{gap}{\hat{m}}")


title!("Plot of normalized Energy Gap vs Correlators Spacing")

display(p)
savefig(p, "gaps.png")