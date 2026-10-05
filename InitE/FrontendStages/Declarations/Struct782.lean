import InitE.FrontendStages.Declarations.Data782
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct766
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct782_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified782 = some simplified782 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms struct782_eq
end InitE.FrontendStages.Declarations
