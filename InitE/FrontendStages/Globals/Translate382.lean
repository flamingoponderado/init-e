import InitE.FrontendStages.Globals.Output382
import InitE.FrontendStages.Declarations.Data382
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate366
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate382_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified382) =
        some globalOutput382 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal382 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified382) := by trivial
theorem globalException382_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified382) = none := by rfl
#print axioms globalTranslate382_eq
end InitE.FrontendStages.Declarations
