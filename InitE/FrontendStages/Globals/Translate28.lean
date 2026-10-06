import InitE.FrontendStages.Globals.Output28
import InitE.FrontendStages.Declarations.Data28
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate12
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate28_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified28) =
        some globalOutput28 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal28 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified28) := by trivial
theorem globalException28_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified28) = none := by rfl
#print axioms globalTranslate28_eq
end InitE.FrontendStages.Declarations
