import InitE.FrontendStages.Globals.Output538
import InitE.FrontendStages.Declarations.Data538
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate522
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate538_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified538) =
        some globalOutput538 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal538 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified538) := by trivial
theorem globalException538_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified538) = none := by rfl
#print axioms globalTranslate538_eq
end InitE.FrontendStages.Declarations
