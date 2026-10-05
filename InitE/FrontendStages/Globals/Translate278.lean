import InitE.FrontendStages.Globals.Output278
import InitE.FrontendStages.Declarations.Data278
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate262
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate278_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified278) =
        some globalOutput278 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal278 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified278) := by trivial
theorem globalException278_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified278) = none := by rfl
#print axioms globalTranslate278_eq
end InitE.FrontendStages.Declarations
