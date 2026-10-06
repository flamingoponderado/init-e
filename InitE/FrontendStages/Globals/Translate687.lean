import InitE.FrontendStages.Globals.Output687
import InitE.FrontendStages.Declarations.Data687
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate671
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate687_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified687) =
        some globalOutput687 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal687 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified687) := by trivial
theorem globalException687_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified687) = none := by rfl
#print axioms globalTranslate687_eq
end InitE.FrontendStages.Declarations
