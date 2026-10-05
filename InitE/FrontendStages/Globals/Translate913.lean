import InitE.FrontendStages.Globals.Output913
import InitE.FrontendStages.Declarations.Data913
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate880
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate913_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified913) =
        some globalOutput913 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal913 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified913) := by trivial
theorem globalException913_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified913) = none := by rfl
#print axioms globalTranslate913_eq
end InitE.FrontendStages.Declarations
