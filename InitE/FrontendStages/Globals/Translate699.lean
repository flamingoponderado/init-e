import InitE.FrontendStages.Globals.Output699
import InitE.FrontendStages.Declarations.Data699
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate683
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate699_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified699) =
        some globalOutput699 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal699 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified699) := by trivial
theorem globalException699_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified699) = none := by rfl
#print axioms globalTranslate699_eq
end InitE.FrontendStages.Declarations
