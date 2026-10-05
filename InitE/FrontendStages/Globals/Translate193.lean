import InitE.FrontendStages.Globals.Output193
import InitE.FrontendStages.Declarations.Data193
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate173
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate193_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified193) =
        some globalOutput193 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal193 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified193) := by trivial
theorem globalException193_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified193) = none := by rfl
#print axioms globalTranslate193_eq
end InitE.FrontendStages.Declarations
