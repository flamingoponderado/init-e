import InitE.FrontendStages.Globals.Output561
import InitE.FrontendStages.Declarations.Data561
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate545
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate561_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified561) =
        some globalOutput561 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal561 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified561) := by trivial
theorem globalException561_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified561) = none := by rfl
#print axioms globalTranslate561_eq
end InitE.FrontendStages.Declarations
