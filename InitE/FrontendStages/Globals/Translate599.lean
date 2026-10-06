import InitE.FrontendStages.Globals.Output599
import InitE.FrontendStages.Declarations.Data599
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate583
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate599_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified599) =
        some globalOutput599 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal599 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified599) := by trivial
theorem globalException599_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified599) = none := by rfl
#print axioms globalTranslate599_eq
end InitE.FrontendStages.Declarations
