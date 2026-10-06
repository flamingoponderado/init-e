import InitE.FrontendStages.Declarations.Data336
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct320
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct336_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified336 = some simplified336 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms struct336_eq
end InitE.FrontendStages.Declarations
