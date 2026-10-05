import InitE.FrontendStages.Globals.Output778
import InitE.FrontendStages.Declarations.Data778
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate762
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate778_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified778) =
        some globalOutput778 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal778 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified778) := by trivial
theorem globalException778_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified778) = none := by rfl
#print axioms globalTranslate778_eq
end InitE.FrontendStages.Declarations
