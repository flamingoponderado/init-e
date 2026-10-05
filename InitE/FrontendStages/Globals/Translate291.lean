import InitE.FrontendStages.Globals.Output291
import InitE.FrontendStages.Declarations.Data291
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate275
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate291_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified291) =
        some globalOutput291 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal291 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified291) := by trivial
theorem globalException291_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified291) = none := by rfl
#print axioms globalTranslate291_eq
end InitE.FrontendStages.Declarations
