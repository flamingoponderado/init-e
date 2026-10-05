import InitE.FrontendStages.Globals.Output341
import InitE.FrontendStages.Declarations.Data341
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate325
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate341_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified341) =
        some globalOutput341 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal341 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified341) := by trivial
theorem globalException341_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified341) = none := by rfl
#print axioms globalTranslate341_eq
end InitE.FrontendStages.Declarations
