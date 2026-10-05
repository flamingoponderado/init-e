import InitE.FrontendStages.Globals.Output420
import InitE.FrontendStages.Declarations.Data420
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate399
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate420_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified420) =
        some globalOutput420 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal420 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified420) := by trivial
theorem globalException420_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified420) = none := by rfl
#print axioms globalTranslate420_eq
end InitE.FrontendStages.Declarations
