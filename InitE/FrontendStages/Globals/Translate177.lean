import InitE.FrontendStages.Globals.Output177
import InitE.FrontendStages.Declarations.Data177
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate161
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate177_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified177) =
        some globalOutput177 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal177 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified177) := by trivial
theorem globalException177_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified177) = none := by rfl
#print axioms globalTranslate177_eq
end InitE.FrontendStages.Declarations
