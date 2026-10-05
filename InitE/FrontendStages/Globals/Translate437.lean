import InitE.FrontendStages.Globals.Output437
import InitE.FrontendStages.Declarations.Data437
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate421
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate437_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified437) =
        some globalOutput437 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal437 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified437) := by trivial
theorem globalException437_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified437) = none := by rfl
#print axioms globalTranslate437_eq
end InitE.FrontendStages.Declarations
