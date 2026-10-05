import InitE.FrontendStages.Globals.Output487
import InitE.FrontendStages.Declarations.Data487
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate471
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate487_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified487) =
        some globalOutput487 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal487 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified487) := by trivial
theorem globalException487_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified487) = none := by rfl
#print axioms globalTranslate487_eq
end InitE.FrontendStages.Declarations
