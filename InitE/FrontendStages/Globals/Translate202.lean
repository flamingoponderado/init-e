import InitE.FrontendStages.Globals.Output202
import InitE.FrontendStages.Declarations.Data202
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate182
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate202_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified202) =
        some globalOutput202 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal202 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified202) := by trivial
theorem globalException202_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified202) = none := by rfl
#print axioms globalTranslate202_eq
end InitE.FrontendStages.Declarations
