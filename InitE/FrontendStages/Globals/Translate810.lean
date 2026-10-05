import InitE.FrontendStages.Globals.Output810
import InitE.FrontendStages.Declarations.Data810
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate791
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate810_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified810) =
        some globalOutput810 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal810 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified810) := by trivial
theorem globalException810_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified810) = none := by rfl
#print axioms globalTranslate810_eq
end InitE.FrontendStages.Declarations
