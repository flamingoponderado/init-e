import InitE.FrontendStages.Globals.Output260
import InitE.FrontendStages.Declarations.Data260
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate237
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate260_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified260) =
        some globalOutput260 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal260 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified260) := by trivial
theorem globalException260_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified260) = none := by rfl
#print axioms globalTranslate260_eq
end InitE.FrontendStages.Declarations
