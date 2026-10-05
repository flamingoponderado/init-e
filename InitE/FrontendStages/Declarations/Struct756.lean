import InitE.FrontendStages.Declarations.Data756
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct740
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct756_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified756 = some simplified756 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms struct756_eq
end InitE.FrontendStages.Declarations
