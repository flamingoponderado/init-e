import InitE.FrontendStages.Globals.Output788
import InitE.FrontendStages.Declarations.Data788
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate772
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate788_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified788) =
        some globalOutput788 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal788 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified788) := by trivial
theorem globalException788_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified788) = none := by rfl
#print axioms globalTranslate788_eq
end InitE.FrontendStages.Declarations
