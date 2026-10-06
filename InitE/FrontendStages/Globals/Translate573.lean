import InitE.FrontendStages.Globals.Output573
import InitE.FrontendStages.Declarations.Data573
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate553
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate573_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified573) =
        some globalOutput573 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal573 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified573) := by trivial
theorem globalException573_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified573) = none := by rfl
#print axioms globalTranslate573_eq
end InitE.FrontendStages.Declarations
