import InitE.FrontendStages.Globals.Output707
import InitE.FrontendStages.Declarations.Data707
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate691
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate707_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified707) =
        some globalOutput707 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal707 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified707) := by trivial
theorem globalException707_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified707) = none := by rfl
#print axioms globalTranslate707_eq
end InitE.FrontendStages.Declarations
