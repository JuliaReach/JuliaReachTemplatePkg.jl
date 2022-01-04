using Documenter, JuliaReachTemplatePkg

DocMeta.setdocmeta!(JuliaReachTemplatePkg, :DocTestSetup,
                    :(using JuliaReachTemplatePkg); recursive=true)

makedocs(
    sitename = "JuliaReachTemplatePkg",
    modules = [JuliaReachTemplatePkg],
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true",
        assets = ["assets/aligned.css"]),
    pages = [
        "Home" => "index.md",
        "About" => "about.md"
    ],
    strict = true
)

deploydocs(
    repo = "github.com/JuliaReach/JuliaReachTemplatePkg.git"
)
