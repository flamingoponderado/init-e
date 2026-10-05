import InitE.FrontendStages.Globals.Output517
import InitE.FrontendStages.Declarations.Data517
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate501
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate517_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified517) =
        some globalOutput517 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal517 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified517) := by trivial
theorem globalException517_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified517) = none := by rfl
#print axioms globalTranslate517_eq
end InitE.FrontendStages.Declarations
