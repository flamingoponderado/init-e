import InitE.FrontendStages.Globals.Output800
import InitE.FrontendStages.Declarations.Data800
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate781
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate800_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified800) =
        some globalOutput800 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal800 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified800) := by trivial
theorem globalException800_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified800) = none := by rfl
#print axioms globalTranslate800_eq
end InitE.FrontendStages.Declarations
