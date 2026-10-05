import InitE.FrontendStages.Globals.Output214
import InitE.FrontendStages.Declarations.Data214
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate198
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate214_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified214) =
        some globalOutput214 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal214 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified214) := by trivial
theorem globalException214_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified214) = none := by rfl
#print axioms globalTranslate214_eq
end InitE.FrontendStages.Declarations
