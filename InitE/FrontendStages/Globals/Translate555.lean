import InitE.FrontendStages.Globals.Output555
import InitE.FrontendStages.Declarations.Data555
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate539
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate555_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified555) =
        some globalOutput555 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal555 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified555) := by trivial
theorem globalException555_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified555) = none := by rfl
#print axioms globalTranslate555_eq
end InitE.FrontendStages.Declarations
