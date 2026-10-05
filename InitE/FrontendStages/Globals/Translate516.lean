import InitE.FrontendStages.Globals.Output516
import InitE.FrontendStages.Declarations.Data516
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate500
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate516_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified516) =
        some globalOutput516 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal516 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified516) := by trivial
theorem globalException516_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified516) = none := by rfl
#print axioms globalTranslate516_eq
end InitE.FrontendStages.Declarations
