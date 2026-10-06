import InitE.FrontendStages.Globals.Output556
import InitE.FrontendStages.Declarations.Data556
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate540
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate556_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified556) =
        some globalOutput556 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal556 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified556) := by trivial
theorem globalException556_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified556) = none := by rfl
#print axioms globalTranslate556_eq
end InitE.FrontendStages.Declarations
