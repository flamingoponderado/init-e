import InitE.FrontendStages.Globals.Output429
import InitE.FrontendStages.Declarations.Data429
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate413
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate429_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified429) =
        some globalOutput429 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal429 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified429) := by trivial
theorem globalException429_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified429) = none := by rfl
#print axioms globalTranslate429_eq
end InitE.FrontendStages.Declarations
