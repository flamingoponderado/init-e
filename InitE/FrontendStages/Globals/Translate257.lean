import InitE.FrontendStages.Globals.Output257
import InitE.FrontendStages.Declarations.Data257
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate234
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate257_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified257) =
        some globalOutput257 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal257 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified257) := by trivial
theorem globalException257_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified257) = none := by rfl
#print axioms globalTranslate257_eq
end InitE.FrontendStages.Declarations
