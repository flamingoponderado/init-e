import InitE.FrontendStages.Globals.Output763
import InitE.FrontendStages.Declarations.Data763
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate744
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate763_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified763) =
        some globalOutput763 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal763 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified763) := by trivial
theorem globalException763_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified763) = none := by rfl
#print axioms globalTranslate763_eq
end InitE.FrontendStages.Declarations
