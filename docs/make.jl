using xlab
using Documenter

DocMeta.setdocmeta!(xlab, :DocTestSetup, :(using xlab); recursive=true)

makedocs(;
    modules=[xlab],
    authors="MikelElorza <mikelelorza0327@gmail.com> and contributors",
    repo="https://github.com/MikelElorza/xlab.jl/blob/{commit}{path}#{line}",
    sitename="xlab.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MikelElorza.github.io/xlab.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/MikelElorza/xlab.jl",
    devbranch="master",
)
