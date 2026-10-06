import InitE.FrontendStages.Globals.Output603
import InitE.FrontendStages.Declarations.Data603
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate587
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate603_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified603) =
        some globalOutput603 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal603 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified603) := by trivial
theorem globalException603_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified603) = none := by rfl
#print axioms globalTranslate603_eq
end InitE.FrontendStages.Declarations
