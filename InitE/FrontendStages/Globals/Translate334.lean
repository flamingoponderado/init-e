import InitE.FrontendStages.Globals.Output334
import InitE.FrontendStages.Declarations.Data334
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate318
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate334_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified334) =
        some globalOutput334 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal334 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified334) := by trivial
theorem globalException334_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified334) = none := by rfl
#print axioms globalTranslate334_eq
end InitE.FrontendStages.Declarations
