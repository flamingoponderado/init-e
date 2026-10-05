import InitE.FrontendStages.Declarations.Data896
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct880
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct896_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified896 = some simplified896 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms struct896_eq
end InitE.FrontendStages.Declarations
