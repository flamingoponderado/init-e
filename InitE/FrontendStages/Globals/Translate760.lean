import InitE.FrontendStages.Globals.Output760
import InitE.FrontendStages.Declarations.Data760
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate741
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate760_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified760) =
        some globalOutput760 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal760 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified760) := by trivial
theorem globalException760_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified760) = none := by rfl
#print axioms globalTranslate760_eq
end InitE.FrontendStages.Declarations
