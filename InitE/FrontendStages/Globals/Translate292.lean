import InitE.FrontendStages.Globals.Output292
import InitE.FrontendStages.Declarations.Data292
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate276
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate292_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified292) =
        some globalOutput292 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal292 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified292) := by trivial
theorem globalException292_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified292) = none := by rfl
#print axioms globalTranslate292_eq
end InitE.FrontendStages.Declarations
