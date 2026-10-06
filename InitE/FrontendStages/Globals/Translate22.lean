import InitE.FrontendStages.Globals.Output22
import InitE.FrontendStages.Declarations.Data22
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate4
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate22_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified22) =
        some globalOutput22 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal22 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified22) := by trivial
theorem globalException22_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified22) = none := by rfl
#print axioms globalTranslate22_eq
end InitE.FrontendStages.Declarations
