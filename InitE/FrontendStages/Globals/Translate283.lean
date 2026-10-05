import InitE.FrontendStages.Globals.Output283
import InitE.FrontendStages.Declarations.Data283
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate267
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate283_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified283) =
        some globalOutput283 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal283 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified283) := by trivial
theorem globalException283_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified283) = none := by rfl
#print axioms globalTranslate283_eq
end InitE.FrontendStages.Declarations
