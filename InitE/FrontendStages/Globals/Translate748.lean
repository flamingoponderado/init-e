import InitE.FrontendStages.Globals.Output748
import InitE.FrontendStages.Declarations.Data748
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate727
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate748_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified748) =
        some globalOutput748 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal748 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified748) := by trivial
theorem globalException748_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified748) = none := by rfl
#print axioms globalTranslate748_eq
end InitE.FrontendStages.Declarations
