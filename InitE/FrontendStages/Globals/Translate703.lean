import InitE.FrontendStages.Globals.Output703
import InitE.FrontendStages.Declarations.Data703
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate687
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate703_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified703) =
        some globalOutput703 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal703 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified703) := by trivial
theorem globalException703_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified703) = none := by rfl
#print axioms globalTranslate703_eq
end InitE.FrontendStages.Declarations
