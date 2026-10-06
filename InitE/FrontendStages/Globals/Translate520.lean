import InitE.FrontendStages.Globals.Output520
import InitE.FrontendStages.Declarations.Data520
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate504
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate520_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified520) =
        some globalOutput520 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal520 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified520) := by trivial
theorem globalException520_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified520) = none := by rfl
#print axioms globalTranslate520_eq
end InitE.FrontendStages.Declarations
