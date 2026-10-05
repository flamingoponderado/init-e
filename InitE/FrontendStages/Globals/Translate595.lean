import InitE.FrontendStages.Globals.Output595
import InitE.FrontendStages.Declarations.Data595
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate579
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate595_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified595) =
        some globalOutput595 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal595 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified595) := by trivial
theorem globalException595_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified595) = none := by rfl
#print axioms globalTranslate595_eq
end InitE.FrontendStages.Declarations
