import InitE.FrontendStages.Globals.Output456
import InitE.FrontendStages.Declarations.Data456
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate435
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate456_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified456) =
        some globalOutput456 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal456 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified456) := by trivial
theorem globalException456_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified456) = none := by rfl
#print axioms globalTranslate456_eq
end InitE.FrontendStages.Declarations
