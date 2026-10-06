import InitE.FrontendStages.Globals.Output146
import InitE.FrontendStages.Declarations.Data146
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate130
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate146_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified146) =
        some globalOutput146 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal146 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified146) := by trivial
theorem globalException146_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified146) = none := by rfl
#print axioms globalTranslate146_eq
end InitE.FrontendStages.Declarations
