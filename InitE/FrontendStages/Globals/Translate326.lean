import InitE.FrontendStages.Globals.Output326
import InitE.FrontendStages.Declarations.Data326
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate310
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate326_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified326) =
        some globalOutput326 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal326 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified326) := by trivial
theorem globalException326_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified326) = none := by rfl
#print axioms globalTranslate326_eq
end InitE.FrontendStages.Declarations
