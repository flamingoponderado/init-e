import InitE.FrontendStages.Globals.Output868
import InitE.FrontendStages.Declarations.Data868
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate852
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate868_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified868) =
        some globalOutput868 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal868 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified868) := by trivial
theorem globalException868_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified868) = none := by rfl
#print axioms globalTranslate868_eq
end InitE.FrontendStages.Declarations
