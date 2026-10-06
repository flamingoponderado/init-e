import InitE.FrontendStages.Globals.Output501
import InitE.FrontendStages.Declarations.Data501
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate485
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate501_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified501) =
        some globalOutput501 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal501 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified501) := by trivial
theorem globalException501_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified501) = none := by rfl
#print axioms globalTranslate501_eq
end InitE.FrontendStages.Declarations
