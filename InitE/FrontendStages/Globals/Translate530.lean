import InitE.FrontendStages.Globals.Output530
import InitE.FrontendStages.Declarations.Data530
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate514
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate530_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified530) =
        some globalOutput530 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal530 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified530) := by trivial
theorem globalException530_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified530) = none := by rfl
#print axioms globalTranslate530_eq
end InitE.FrontendStages.Declarations
