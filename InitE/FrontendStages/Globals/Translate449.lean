import InitE.FrontendStages.Globals.Output449
import InitE.FrontendStages.Declarations.Data449
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate428
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate449_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified449) =
        some globalOutput449 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal449 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified449) := by trivial
theorem globalException449_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified449) = none := by rfl
#print axioms globalTranslate449_eq
end InitE.FrontendStages.Declarations
