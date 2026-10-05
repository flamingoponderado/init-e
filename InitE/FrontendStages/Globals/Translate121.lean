import InitE.FrontendStages.Globals.Output121
import InitE.FrontendStages.Declarations.Data121
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate104
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate121_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified121) =
        some globalOutput121 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal121 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified121) := by trivial
theorem globalException121_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified121) = none := by rfl
#print axioms globalTranslate121_eq
end InitE.FrontendStages.Declarations
