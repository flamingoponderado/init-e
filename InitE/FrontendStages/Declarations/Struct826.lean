import InitE.FrontendStages.Declarations.Data826
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct810
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct826_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified826 = some simplified826 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms struct826_eq
end InitE.FrontendStages.Declarations
