import InitE.FrontendStages.Globals.Output774
import InitE.FrontendStages.Declarations.Data774
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate755
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate774_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified774) =
        some globalOutput774 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal774 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified774) := by trivial
theorem globalException774_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified774) = none := by rfl
#print axioms globalTranslate774_eq
end InitE.FrontendStages.Declarations
