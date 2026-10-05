import InitE.FrontendStages.Globals.Output54
import InitE.FrontendStages.Declarations.Data54
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate37
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate54_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified54) =
        some globalOutput54 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal54 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified54) := by trivial
theorem globalException54_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified54) = none := by rfl
#print axioms globalTranslate54_eq
end InitE.FrontendStages.Declarations
