import InitE.FrontendStages.Declarations.Data456
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct440
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct456_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified456 = some simplified456 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms struct456_eq
end InitE.FrontendStages.Declarations
