import InitE.FrontendStages.Globals.Output804
import InitE.FrontendStages.Declarations.Data804
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate785
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate804_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified804) =
        some globalOutput804 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal804 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified804) := by trivial
theorem globalException804_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified804) = none := by rfl
#print axioms globalTranslate804_eq
end InitE.FrontendStages.Declarations
