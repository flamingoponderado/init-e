import InitE.FrontendStages.Globals.Output916
import InitE.FrontendStages.Declarations.Data916
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate899
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate916_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified916) =
        some globalOutput916 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal916 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified916) := by trivial
theorem globalException916_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified916) = none := by rfl
#print axioms globalTranslate916_eq
end InitE.FrontendStages.Declarations
