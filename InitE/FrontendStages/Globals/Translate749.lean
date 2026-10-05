import InitE.FrontendStages.Globals.Output749
import InitE.FrontendStages.Declarations.Data749
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate728
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate749_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified749) =
        some globalOutput749 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal749 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified749) := by trivial
theorem globalException749_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified749) = none := by rfl
#print axioms globalTranslate749_eq
end InitE.FrontendStages.Declarations
