import InitE.FrontendStages.Globals.Output706
import InitE.FrontendStages.Declarations.Data706
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate690
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate706_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified706) =
        some globalOutput706 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal706 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified706) := by trivial
theorem globalException706_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified706) = none := by rfl
#print axioms globalTranslate706_eq
end InitE.FrontendStages.Declarations
