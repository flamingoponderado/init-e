import InitE.FrontendStages.Globals.Output378
import InitE.FrontendStages.Declarations.Data378
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate362
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate378_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified378) =
        some globalOutput378 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal378 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified378) := by trivial
theorem globalException378_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified378) = none := by rfl
#print axioms globalTranslate378_eq
end InitE.FrontendStages.Declarations
