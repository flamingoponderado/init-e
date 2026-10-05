import InitE.FrontendStages.Globals.Output533
import InitE.FrontendStages.Declarations.Data533
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate517
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate533_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified533) =
        some globalOutput533 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal533 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified533) := by trivial
theorem globalException533_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified533) = none := by rfl
#print axioms globalTranslate533_eq
end InitE.FrontendStages.Declarations
