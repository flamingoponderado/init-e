import InitE.FrontendStages.Globals.Output126
import InitE.FrontendStages.Declarations.Data126
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate110
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate126_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified126) =
        some globalOutput126 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal126 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified126) := by trivial
theorem globalException126_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified126) = none := by rfl
#print axioms globalTranslate126_eq
end InitE.FrontendStages.Declarations
