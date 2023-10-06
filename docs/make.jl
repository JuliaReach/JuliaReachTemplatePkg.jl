using Documenter, JuliaReachTemplatePkg

DocMeta.setdocmeta!(JuliaReachTemplatePkg, :DocTestSetup,
                    :(using JuliaReachTemplatePkg); recursive=true)

makedocs(; sitename="JuliaReachTemplatePkg.jl",
         modules=[JuliaReachTemplatePkg],
         format=Documenter.HTML(; prettyurls=get(ENV, "CI", nothing) == "true",
                                assets=["assets/aligned.css"]),
         pagesonly=true,
         pages=["Home" => "index.md",
                "About" => "about.md"])

deploydocs(; repo="github.com/JuliaReach/JuliaReachTemplatePkg.jl.git",
           push_preview=true)
