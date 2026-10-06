import InitE.FrontendStages.Globals.Output546
import InitE.FrontendStages.Declarations.Data546
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate530
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate546_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified546) =
        some globalOutput546 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal546 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified546) := by trivial
theorem globalException546_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified546) = none := by rfl
#print axioms globalTranslate546_eq
end InitE.FrontendStages.Declarations
