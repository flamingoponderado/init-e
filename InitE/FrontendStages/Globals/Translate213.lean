import InitE.FrontendStages.Globals.Output213
import InitE.FrontendStages.Declarations.Data213
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate197
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate213_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified213) =
        some globalOutput213 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal213 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified213) := by trivial
theorem globalException213_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified213) = none := by rfl
#print axioms globalTranslate213_eq
end InitE.FrontendStages.Declarations
