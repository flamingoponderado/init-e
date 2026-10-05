import InitE.FrontendStages.Globals.Output536
import InitE.FrontendStages.Declarations.Data536
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate520
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate536_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified536) =
        some globalOutput536 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal536 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified536) := by trivial
theorem globalException536_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified536) = none := by rfl
#print axioms globalTranslate536_eq
end InitE.FrontendStages.Declarations
