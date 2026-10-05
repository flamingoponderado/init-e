import InitE.FrontendStages.Globals.Output39
import InitE.FrontendStages.Declarations.Data39
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate22
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate39_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified39) =
        some globalOutput39 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal39 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified39) := by trivial
theorem globalException39_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified39) = none := by rfl
#print axioms globalTranslate39_eq
end InitE.FrontendStages.Declarations
