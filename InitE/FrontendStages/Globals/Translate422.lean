import InitE.FrontendStages.Globals.Output422
import InitE.FrontendStages.Declarations.Data422
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate401
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate422_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified422) =
        some globalOutput422 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal422 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified422) := by trivial
theorem globalException422_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified422) = none := by rfl
#print axioms globalTranslate422_eq
end InitE.FrontendStages.Declarations
