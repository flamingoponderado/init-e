import InitE.FrontendStages.Declarations.Data202
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct186
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct202_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified202 = some simplified202 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms struct202_eq
end InitE.FrontendStages.Declarations
