import InitE.FrontendStages.Globals.Output503
import InitE.FrontendStages.Declarations.Data503
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate487
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate503_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified503) =
        some globalOutput503 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal503 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified503) := by trivial
theorem globalException503_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified503) = none := by rfl
#print axioms globalTranslate503_eq
end InitE.FrontendStages.Declarations
