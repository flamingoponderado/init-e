import InitE.FrontendStages.Globals.Output300
import InitE.FrontendStages.Declarations.Data300
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate283
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate300_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified300) =
        some globalOutput300 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal300 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified300) := by trivial
theorem globalException300_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified300) = none := by rfl
#print axioms globalTranslate300_eq
end InitE.FrontendStages.Declarations
