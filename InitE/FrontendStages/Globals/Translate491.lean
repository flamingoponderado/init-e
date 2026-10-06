import InitE.FrontendStages.Globals.Output491
import InitE.FrontendStages.Declarations.Data491
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate475
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate491_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified491) =
        some globalOutput491 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal491 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified491) := by trivial
theorem globalException491_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified491) = none := by rfl
#print axioms globalTranslate491_eq
end InitE.FrontendStages.Declarations
