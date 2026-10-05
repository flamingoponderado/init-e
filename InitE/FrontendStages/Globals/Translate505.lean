import InitE.FrontendStages.Globals.Output505
import InitE.FrontendStages.Declarations.Data505
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate489
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate505_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified505) =
        some globalOutput505 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal505 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified505) := by trivial
theorem globalException505_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified505) = none := by rfl
#print axioms globalTranslate505_eq
end InitE.FrontendStages.Declarations
