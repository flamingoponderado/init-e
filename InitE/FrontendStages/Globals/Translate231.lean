import InitE.FrontendStages.Globals.Output231
import InitE.FrontendStages.Declarations.Data231
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate213
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate231_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified231) =
        some globalOutput231 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal231 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified231) := by trivial
theorem globalException231_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified231) = none := by rfl
#print axioms globalTranslate231_eq
end InitE.FrontendStages.Declarations
