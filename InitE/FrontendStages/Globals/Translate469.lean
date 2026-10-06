import InitE.FrontendStages.Globals.Output469
import InitE.FrontendStages.Declarations.Data469
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate453
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate469_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified469) =
        some globalOutput469 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal469 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified469) := by trivial
theorem globalException469_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified469) = none := by rfl
#print axioms globalTranslate469_eq
end InitE.FrontendStages.Declarations
