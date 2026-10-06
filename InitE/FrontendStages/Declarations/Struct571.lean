import InitE.FrontendStages.Declarations.Data571
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct555
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct571_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified571 = some simplified571 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms struct571_eq
end InitE.FrontendStages.Declarations
