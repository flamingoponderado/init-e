import InitE.FrontendStages.Globals.Output482
import InitE.FrontendStages.Declarations.Data482
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate466
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate482_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified482) =
        some globalOutput482 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal482 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified482) := by trivial
theorem globalException482_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified482) = none := by rfl
#print axioms globalTranslate482_eq
end InitE.FrontendStages.Declarations
