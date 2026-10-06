import InitE.FrontendStages.Globals.Output511
import InitE.FrontendStages.Declarations.Data511
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate495
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate511_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified511) =
        some globalOutput511 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal511 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified511) := by trivial
theorem globalException511_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified511) = none := by rfl
#print axioms globalTranslate511_eq
end InitE.FrontendStages.Declarations
