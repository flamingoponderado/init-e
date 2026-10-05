import InitE.FrontendStages.Globals.Output685
import InitE.FrontendStages.Declarations.Data685
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate669
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate685_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified685) =
        some globalOutput685 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal685 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified685) := by trivial
theorem globalException685_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified685) = none := by rfl
#print axioms globalTranslate685_eq
end InitE.FrontendStages.Declarations
