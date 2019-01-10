using Documenter, JuliaReachTemplatePkg

makedocs(;
    doctest = true,
    modules=[JuliaReachTemplatePkg],
    format = :html,
    pages = [
        "Home" => "index.md",
        "Library" => Any[
        "Types" => "lib/types.md",
        "Methods" => "lib/methods.md"],
        "About" => "about.md"
    ],
    repo="https://github.com/JuliaReach/JuliaReachTemplatePkg.jl/blob/{commit}{path}#L{line}",
    sitename="JuliaReachTemplatePkg.jl",
    authors="Marcelo Forets",
    assets = ["assets/juliareach.css"],
)

deploydocs(;
    repo="github.com/JuliaReach/JuliaReachTemplatePkg.jl",
    target="build",
    deps=nothing,
    make=nothing,
)
