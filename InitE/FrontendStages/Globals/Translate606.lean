import InitE.FrontendStages.Globals.Output606
import InitE.FrontendStages.Declarations.Data606
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate590
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate606_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified606) =
        some globalOutput606 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal606 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified606) := by trivial
theorem globalException606_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified606) = none := by rfl
#print axioms globalTranslate606_eq
end InitE.FrontendStages.Declarations
