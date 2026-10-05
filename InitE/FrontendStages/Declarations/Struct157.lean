import InitE.FrontendStages.Declarations.Data157
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct141
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct157_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified157 = some simplified157 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms struct157_eq
end InitE.FrontendStages.Declarations
