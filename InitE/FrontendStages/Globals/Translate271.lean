import InitE.FrontendStages.Globals.Output271
import InitE.FrontendStages.Declarations.Data271
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate255
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate271_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified271) =
        some globalOutput271 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal271 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified271) := by trivial
theorem globalException271_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified271) = none := by rfl
#print axioms globalTranslate271_eq
end InitE.FrontendStages.Declarations
