import InitE.FrontendStages.Globals.Output211
import InitE.FrontendStages.Declarations.Data211
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate195
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate211_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified211) =
        some globalOutput211 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal211 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified211) := by trivial
theorem globalException211_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified211) = none := by rfl
#print axioms globalTranslate211_eq
end InitE.FrontendStages.Declarations
