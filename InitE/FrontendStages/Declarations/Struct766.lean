import InitE.FrontendStages.Declarations.Data766
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct750
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct766_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified766 = some simplified766 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms struct766_eq
end InitE.FrontendStages.Declarations
