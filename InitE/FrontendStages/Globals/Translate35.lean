import InitE.FrontendStages.Globals.Output35
import InitE.FrontendStages.Declarations.Data35
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate19
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate35_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified35) =
        some globalOutput35 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal35 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified35) := by trivial
theorem globalException35_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified35) = none := by rfl
#print axioms globalTranslate35_eq
end InitE.FrontendStages.Declarations
