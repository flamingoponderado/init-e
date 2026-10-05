import InitE.FrontendStages.Globals.Output584
import InitE.FrontendStages.Declarations.Data584
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate564
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate584_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified584) =
        some globalOutput584 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal584 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified584) := by trivial
theorem globalException584_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified584) = none := by rfl
#print axioms globalTranslate584_eq
end InitE.FrontendStages.Declarations
