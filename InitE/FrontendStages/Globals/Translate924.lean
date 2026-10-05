import InitE.FrontendStages.Globals.Output924
import InitE.FrontendStages.Declarations.Data924
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate908
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate924_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified924) =
        some globalOutput924 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal924 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified924) := by trivial
theorem globalException924_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified924) = none := by rfl
#print axioms globalTranslate924_eq
end InitE.FrontendStages.Declarations
