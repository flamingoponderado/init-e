import InitE.FrontendStages.Globals.Output831
import InitE.FrontendStages.Declarations.Data831
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate815
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate831_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified831) =
        some globalOutput831 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal831 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified831) := by trivial
theorem globalException831_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified831) = none := by rfl
#print axioms globalTranslate831_eq
end InitE.FrontendStages.Declarations
