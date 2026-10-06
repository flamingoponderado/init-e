import InitE.FrontendStages.Globals.Output842
import InitE.FrontendStages.Declarations.Data842
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate826
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate842_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified842) =
        some globalOutput842 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal842 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified842) := by trivial
theorem globalException842_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified842) = none := by rfl
#print axioms globalTranslate842_eq
end InitE.FrontendStages.Declarations
