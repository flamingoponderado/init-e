import InitE.FrontendStages.Globals.Output467
import InitE.FrontendStages.Declarations.Data467
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate451
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate467_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified467) =
        some globalOutput467 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal467 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified467) := by trivial
theorem globalException467_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified467) = none := by rfl
#print axioms globalTranslate467_eq
end InitE.FrontendStages.Declarations
