import InitE.FrontendStages.Globals.Output276
import InitE.FrontendStages.Declarations.Data276
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate260
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate276_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified276) =
        some globalOutput276 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal276 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified276) := by trivial
theorem globalException276_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified276) = none := by rfl
#print axioms globalTranslate276_eq
end InitE.FrontendStages.Declarations
