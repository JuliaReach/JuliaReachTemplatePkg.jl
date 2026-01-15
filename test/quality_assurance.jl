using JuliaReachTemplatePkg, Test
import Aqua, ExplicitImports

@testset "ExplicitImports tests" begin
    @test isnothing(ExplicitImports.check_all_explicit_imports_are_public(JuliaReachTemplatePkg))
    @test isnothing(ExplicitImports.check_all_explicit_imports_via_owners(JuliaReachTemplatePkg))
    @test isnothing(ExplicitImports.check_all_qualified_accesses_are_public(JuliaReachTemplatePkg))
    @test isnothing(ExplicitImports.check_all_qualified_accesses_via_owners(JuliaReachTemplatePkg))
    @test isnothing(ExplicitImports.check_no_implicit_imports(JuliaReachTemplatePkg))
    @test isnothing(ExplicitImports.check_no_self_qualified_accesses(JuliaReachTemplatePkg))
    @test isnothing(ExplicitImports.check_no_stale_explicit_imports(JuliaReachTemplatePkg))
end

@testset "Aqua tests" begin
    Aqua.test_all(JuliaReachTemplatePkg; project_extras=false)
end
