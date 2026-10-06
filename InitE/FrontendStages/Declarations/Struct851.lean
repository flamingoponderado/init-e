import InitE.FrontendStages.Declarations.Data851
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct835
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct851_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified851 = some simplified851 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms struct851_eq
end InitE.FrontendStages.Declarations
