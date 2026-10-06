import InitE.FrontendStages.Globals.Output299
import InitE.FrontendStages.Declarations.Data299
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate282
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate299_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified299) =
        some globalOutput299 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal299 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified299) := by trivial
theorem globalException299_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified299) = none := by rfl
#print axioms globalTranslate299_eq
end InitE.FrontendStages.Declarations
