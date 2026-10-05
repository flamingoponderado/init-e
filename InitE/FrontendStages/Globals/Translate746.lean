import InitE.FrontendStages.Globals.Output746
import InitE.FrontendStages.Declarations.Data746
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate725
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate746_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified746) =
        some globalOutput746 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal746 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified746) := by trivial
theorem globalException746_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified746) = none := by rfl
#print axioms globalTranslate746_eq
end InitE.FrontendStages.Declarations
