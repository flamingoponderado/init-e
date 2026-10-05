import InitE.FrontendStages.Declarations.Data88
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct72
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct88_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified88 = some simplified88 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms struct88_eq
end InitE.FrontendStages.Declarations
