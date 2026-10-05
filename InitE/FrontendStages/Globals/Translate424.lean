import InitE.FrontendStages.Globals.Output424
import InitE.FrontendStages.Declarations.Data424
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate403
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate424_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified424) =
        some globalOutput424 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal424 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified424) := by trivial
theorem globalException424_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified424) = none := by rfl
#print axioms globalTranslate424_eq
end InitE.FrontendStages.Declarations
