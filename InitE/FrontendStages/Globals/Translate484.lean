import InitE.FrontendStages.Globals.Output484
import InitE.FrontendStages.Declarations.Data484
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate468
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate484_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified484) =
        some globalOutput484 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal484 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified484) := by trivial
theorem globalException484_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified484) = none := by rfl
#print axioms globalTranslate484_eq
end InitE.FrontendStages.Declarations
