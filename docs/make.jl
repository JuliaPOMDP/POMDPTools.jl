using POMDPTools
using Documenter

DocMeta.setdocmeta!(POMDPTools, :DocTestSetup, :(using POMDPTools); recursive=true)

makedocs(;
    modules=[POMDPTools],
    authors="Zachary Sunberg <zachary.sunberg@colorado.edu> and contributors",
    repo="https://github.com/JuliaPOMDP/POMDPTools.jl/blob/{commit}{path}#{line}",
    sitename="POMDPTools.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JuliaPOMDP.github.io/POMDPTools.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaPOMDP/POMDPTools.jl",
    devbranch="main",
)
