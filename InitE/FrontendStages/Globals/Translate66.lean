import InitE.FrontendStages.Globals.Output66
import InitE.FrontendStages.Declarations.Data66
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate50
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate66_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified66) =
        some globalOutput66 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal66 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified66) := by trivial
theorem globalException66_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified66) = none := by rfl
#print axioms globalTranslate66_eq
end InitE.FrontendStages.Declarations
