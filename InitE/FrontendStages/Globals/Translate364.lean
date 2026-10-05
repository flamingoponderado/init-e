import InitE.FrontendStages.Globals.Output364
import InitE.FrontendStages.Declarations.Data364
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate341
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate364_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified364) =
        some globalOutput364 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal364 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified364) := by trivial
theorem globalException364_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified364) = none := by rfl
#print axioms globalTranslate364_eq
end InitE.FrontendStages.Declarations
