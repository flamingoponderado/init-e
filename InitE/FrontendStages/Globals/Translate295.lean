import InitE.FrontendStages.Globals.Output295
import InitE.FrontendStages.Declarations.Data295
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate279
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate295_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified295) =
        some globalOutput295 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal295 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified295) := by trivial
theorem globalException295_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified295) = none := by rfl
#print axioms globalTranslate295_eq
end InitE.FrontendStages.Declarations
