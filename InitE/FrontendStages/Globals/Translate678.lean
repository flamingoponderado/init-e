import InitE.FrontendStages.Globals.Output678
import InitE.FrontendStages.Declarations.Data678
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate647
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate678_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified678) =
        some globalOutput678 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal678 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified678) := by trivial
theorem globalException678_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified678) = none := by rfl
#print axioms globalTranslate678_eq
end InitE.FrontendStages.Declarations
