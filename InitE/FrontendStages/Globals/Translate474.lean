import InitE.FrontendStages.Globals.Output474
import InitE.FrontendStages.Declarations.Data474
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate458
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate474_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified474) =
        some globalOutput474 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal474 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified474) := by trivial
theorem globalException474_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified474) = none := by rfl
#print axioms globalTranslate474_eq
end InitE.FrontendStages.Declarations
