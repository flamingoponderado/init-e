import InitE.FrontendStages.Globals.Output564
import InitE.FrontendStages.Declarations.Data564
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate548
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate564_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified564) =
        some globalOutput564 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal564 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified564) := by trivial
theorem globalException564_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified564) = none := by rfl
#print axioms globalTranslate564_eq
end InitE.FrontendStages.Declarations
