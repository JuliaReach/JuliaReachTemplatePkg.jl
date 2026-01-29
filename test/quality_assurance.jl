using JuliaReachTemplatePkg, Test
import Aqua, ExplicitImports

@testset "ExplicitImports tests" begin
    ExplicitImports.test_explicit_imports(JuliaReachTemplatePkg)
end

@testset "Aqua tests" begin
    Aqua.test_all(JuliaReachTemplatePkg; project_extras=false)
end
