import InitE.FrontendStages.Globals.Output367
import InitE.FrontendStages.Declarations.Data367
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate344
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate367_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified367) =
        some globalOutput367 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal367 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified367) := by trivial
theorem globalException367_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified367) = none := by rfl
#print axioms globalTranslate367_eq
end InitE.FrontendStages.Declarations
