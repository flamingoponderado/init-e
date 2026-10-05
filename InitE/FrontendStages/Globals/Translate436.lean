import InitE.FrontendStages.Globals.Output436
import InitE.FrontendStages.Declarations.Data436
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate420
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate436_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified436) =
        some globalOutput436 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal436 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified436) := by trivial
theorem globalException436_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified436) = none := by rfl
#print axioms globalTranslate436_eq
end InitE.FrontendStages.Declarations
