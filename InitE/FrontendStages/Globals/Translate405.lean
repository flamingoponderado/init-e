import InitE.FrontendStages.Globals.Output405
import InitE.FrontendStages.Declarations.Data405
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate389
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate405_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified405) =
        some globalOutput405 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal405 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified405) := by trivial
theorem globalException405_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified405) = none := by rfl
#print axioms globalTranslate405_eq
end InitE.FrontendStages.Declarations
