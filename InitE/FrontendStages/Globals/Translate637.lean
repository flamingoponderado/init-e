import InitE.FrontendStages.Globals.Output637
import InitE.FrontendStages.Declarations.Data637
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate616
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate637_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified637) =
        some globalOutput637 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal637 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified637) := by trivial
theorem globalException637_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified637) = none := by rfl
#print axioms globalTranslate637_eq
end InitE.FrontendStages.Declarations
