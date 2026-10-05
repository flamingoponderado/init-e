import InitE.FrontendStages.Globals.Output21
import InitE.FrontendStages.Declarations.Data21
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate0
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate21_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified21) =
        some globalOutput21 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal21 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified21) := by trivial
theorem globalException21_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified21) = none := by rfl
#print axioms globalTranslate21_eq
end InitE.FrontendStages.Declarations
