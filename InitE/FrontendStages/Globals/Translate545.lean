import InitE.FrontendStages.Globals.Output545
import InitE.FrontendStages.Declarations.Data545
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate529
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate545_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified545) =
        some globalOutput545 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal545 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified545) := by trivial
theorem globalException545_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified545) = none := by rfl
#print axioms globalTranslate545_eq
end InitE.FrontendStages.Declarations
