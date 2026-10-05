import InitE.FrontendStages.Globals.Output135
import InitE.FrontendStages.Declarations.Data135
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate119
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate135_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified135) =
        some globalOutput135 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal135 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified135) := by trivial
theorem globalException135_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified135) = none := by rfl
#print axioms globalTranslate135_eq
end InitE.FrontendStages.Declarations
