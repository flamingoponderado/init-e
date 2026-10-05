import InitE.FrontendStages.Globals.Output109
import InitE.FrontendStages.Declarations.Data109
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate87
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate109_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified109) =
        some globalOutput109 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal109 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified109) := by trivial
theorem globalException109_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified109) = none := by rfl
#print axioms globalTranslate109_eq
end InitE.FrontendStages.Declarations
