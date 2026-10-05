import InitE.FrontendStages.Globals.Output677
import InitE.FrontendStages.Declarations.Data677
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate646
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate677_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified677) =
        some globalOutput677 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal677 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified677) := by trivial
theorem globalException677_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified677) = none := by rfl
#print axioms globalTranslate677_eq
end InitE.FrontendStages.Declarations
