import InitE.FrontendStages.Globals.Output24
import InitE.FrontendStages.Declarations.Data24
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate24_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified24) =
        some globalOutput24 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal24 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified24) := by trivial
theorem globalException24_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified24) = none := by rfl
#print axioms globalTranslate24_eq
end InitE.FrontendStages.Declarations
