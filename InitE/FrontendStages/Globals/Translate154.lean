import InitE.FrontendStages.Globals.Output154
import InitE.FrontendStages.Declarations.Data154
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate137
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate154_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified154) =
        some globalOutput154 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal154 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified154) := by trivial
theorem globalException154_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified154) = none := by rfl
#print axioms globalTranslate154_eq
end InitE.FrontendStages.Declarations
