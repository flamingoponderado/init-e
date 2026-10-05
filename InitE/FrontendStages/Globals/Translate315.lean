import InitE.FrontendStages.Globals.Output315
import InitE.FrontendStages.Declarations.Data315
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate299
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate315_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified315) =
        some globalOutput315 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal315 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified315) := by trivial
theorem globalException315_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified315) = none := by rfl
#print axioms globalTranslate315_eq
end InitE.FrontendStages.Declarations
