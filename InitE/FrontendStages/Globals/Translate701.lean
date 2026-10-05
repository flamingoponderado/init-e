import InitE.FrontendStages.Globals.Output701
import InitE.FrontendStages.Declarations.Data701
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate685
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate701_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified701) =
        some globalOutput701 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal701 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified701) := by trivial
theorem globalException701_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified701) = none := by rfl
#print axioms globalTranslate701_eq
end InitE.FrontendStages.Declarations
