import InitE.FrontendStages.Globals.Output645
import InitE.FrontendStages.Declarations.Data645
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate629
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate645_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified645) =
        some globalOutput645 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal645 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified645) := by trivial
theorem globalException645_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified645) = none := by rfl
#print axioms globalTranslate645_eq
end InitE.FrontendStages.Declarations
