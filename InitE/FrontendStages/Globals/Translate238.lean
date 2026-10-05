import InitE.FrontendStages.Globals.Output238
import InitE.FrontendStages.Declarations.Data238
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate220
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate238_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified238) =
        some globalOutput238 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal238 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified238) := by trivial
theorem globalException238_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified238) = none := by rfl
#print axioms globalTranslate238_eq
end InitE.FrontendStages.Declarations
