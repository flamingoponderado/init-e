import InitE.FrontendStages.Globals.Output88
import InitE.FrontendStages.Declarations.Data88
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate72
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate88_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified88) =
        some globalOutput88 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal88 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified88) := by trivial
theorem globalException88_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified88) = none := by rfl
#print axioms globalTranslate88_eq
end InitE.FrontendStages.Declarations
