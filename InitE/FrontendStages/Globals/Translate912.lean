import InitE.FrontendStages.Globals.Output912
import InitE.FrontendStages.Declarations.Data912
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate879
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate912_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified912) =
        some globalOutput912 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal912 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified912) := by trivial
theorem globalException912_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified912) = none := by rfl
#print axioms globalTranslate912_eq
end InitE.FrontendStages.Declarations
