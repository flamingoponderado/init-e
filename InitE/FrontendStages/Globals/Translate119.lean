import InitE.FrontendStages.Globals.Output119
import InitE.FrontendStages.Declarations.Data119
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate102
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate119_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified119) =
        some globalOutput119 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal119 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified119) := by trivial
theorem globalException119_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified119) = none := by rfl
#print axioms globalTranslate119_eq
end InitE.FrontendStages.Declarations
