import InitE.FrontendStages.Globals.Output34
import InitE.FrontendStages.Declarations.Data34
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate18
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate34_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified34) =
        some globalOutput34 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal34 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified34) := by trivial
theorem globalException34_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified34) = none := by rfl
#print axioms globalTranslate34_eq
end InitE.FrontendStages.Declarations
