import InitE.FrontendStages.Globals.Output736
import InitE.FrontendStages.Declarations.Data736
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate714
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate736_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified736) =
        some globalOutput736 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal736 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified736) := by trivial
theorem globalException736_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified736) = none := by rfl
#print axioms globalTranslate736_eq
end InitE.FrontendStages.Declarations
