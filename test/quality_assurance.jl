using JuliaReachTemplatePkg, Test
import Aqua, ExplicitImports, JET

@testset "ExplicitImports tests" begin
    ExplicitImports.test_explicit_imports(JuliaReachTemplatePkg)
end

@testset "JET tests" begin
    JET.test_package(JuliaReachTemplatePkg)
end

@testset "Aqua tests" begin
    Aqua.test_all(JuliaReachTemplatePkg; project_extras=false)
end
