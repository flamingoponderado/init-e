import InitE.FrontendStages.Globals.Output475
import InitE.FrontendStages.Declarations.Data475
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate459
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate475_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified475) =
        some globalOutput475 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal475 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified475) := by trivial
theorem globalException475_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified475) = none := by rfl
#print axioms globalTranslate475_eq
end InitE.FrontendStages.Declarations
