import InitE.FrontendStages.Globals.Output360
import InitE.FrontendStages.Declarations.Data360
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate337
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate360_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified360) =
        some globalOutput360 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal360 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified360) := by trivial
theorem globalException360_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified360) = none := by rfl
#print axioms globalTranslate360_eq
end InitE.FrontendStages.Declarations
