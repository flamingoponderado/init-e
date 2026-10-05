import InitE.FrontendStages.Globals.Output400
import InitE.FrontendStages.Declarations.Data400
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate384
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate400_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified400) =
        some globalOutput400 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal400 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified400) := by trivial
theorem globalException400_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified400) = none := by rfl
#print axioms globalTranslate400_eq
end InitE.FrontendStages.Declarations
