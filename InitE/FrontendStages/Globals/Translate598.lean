import InitE.FrontendStages.Globals.Output598
import InitE.FrontendStages.Declarations.Data598
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate582
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate598_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified598) =
        some globalOutput598 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal598 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified598) := by trivial
theorem globalException598_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified598) = none := by rfl
#print axioms globalTranslate598_eq
end InitE.FrontendStages.Declarations
