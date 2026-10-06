import InitE.FrontendStages.Globals.Output280
import InitE.FrontendStages.Declarations.Data280
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate264
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate280_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified280) =
        some globalOutput280 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal280 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified280) := by trivial
theorem globalException280_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified280) = none := by rfl
#print axioms globalTranslate280_eq
end InitE.FrontendStages.Declarations
