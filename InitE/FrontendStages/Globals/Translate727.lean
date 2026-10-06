import InitE.FrontendStages.Globals.Output727
import InitE.FrontendStages.Declarations.Data727
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate710
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate727_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified727) =
        some globalOutput727 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal727 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified727) := by trivial
theorem globalException727_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified727) = none := by rfl
#print axioms globalTranslate727_eq
end InitE.FrontendStages.Declarations
