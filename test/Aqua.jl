using JuliaReachTemplatePkg, Test
import Aqua

@testset "Aqua tests" begin
    Aqua.test_all(JuliaReachTemplatePkg; project_extras=false)
end
