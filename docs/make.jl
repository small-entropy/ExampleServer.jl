using ExampleServer
using Documenter

makedocs(;
    modules=[ExampleServer],
    authors="Dmitrii Shevelev",
    repo="https://github.com/small-entopy/ExampleServer.jl/blob/{commit}{path}#L{line}",
    sitename="ExampleServer.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://small-entopy.github.io/ExampleServer.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/small-entopy/ExampleServer.jl",
)
