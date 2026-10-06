import InitE.FrontendStages.Globals.Output834
import InitE.FrontendStages.Declarations.Data834
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate818
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate834_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified834) =
        some globalOutput834 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal834 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified834) := by trivial
theorem globalException834_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified834) = none := by rfl
#print axioms globalTranslate834_eq
end InitE.FrontendStages.Declarations
