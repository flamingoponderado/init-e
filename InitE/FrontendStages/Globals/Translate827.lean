import InitE.FrontendStages.Globals.Output827
import InitE.FrontendStages.Declarations.Data827
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate811
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate827_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified827) =
        some globalOutput827 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal827 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified827) := by trivial
theorem globalException827_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified827) = none := by rfl
#print axioms globalTranslate827_eq
end InitE.FrontendStages.Declarations
