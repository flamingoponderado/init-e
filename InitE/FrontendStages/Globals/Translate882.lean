import InitE.FrontendStages.Globals.Output882
import InitE.FrontendStages.Declarations.Data882
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate866
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate882_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified882) =
        some globalOutput882 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal882 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified882) := by trivial
theorem globalException882_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified882) = none := by rfl
#print axioms globalTranslate882_eq
end InitE.FrontendStages.Declarations
