import InitE.FrontendStages.Globals.Output417
import InitE.FrontendStages.Declarations.Data417
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate396
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate417_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified417) =
        some globalOutput417 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal417 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified417) := by trivial
theorem globalException417_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified417) = none := by rfl
#print axioms globalTranslate417_eq
end InitE.FrontendStages.Declarations
