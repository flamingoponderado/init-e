import InitE.FrontendStages.Globals.Output551
import InitE.FrontendStages.Declarations.Data551
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate535
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate551_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified551) =
        some globalOutput551 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal551 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified551) := by trivial
theorem globalException551_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified551) = none := by rfl
#print axioms globalTranslate551_eq
end InitE.FrontendStages.Declarations
