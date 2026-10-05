import InitE.FrontendStages.Globals.Output259
import InitE.FrontendStages.Declarations.Data259
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate236
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate259_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified259) =
        some globalOutput259 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal259 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified259) := by trivial
theorem globalException259_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified259) = none := by rfl
#print axioms globalTranslate259_eq
end InitE.FrontendStages.Declarations
