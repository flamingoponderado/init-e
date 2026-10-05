import InitE.FrontendStages.Globals.Output600
import InitE.FrontendStages.Declarations.Data600
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate584
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate600_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified600) =
        some globalOutput600 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal600 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified600) := by trivial
theorem globalException600_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified600) = none := by rfl
#print axioms globalTranslate600_eq
end InitE.FrontendStages.Declarations
