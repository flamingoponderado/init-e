import InitE.FrontendStages.Globals.Output876
import InitE.FrontendStages.Declarations.Data876
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate860
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate876_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified876) =
        some globalOutput876 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal876 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified876) := by trivial
theorem globalException876_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified876) = none := by rfl
#print axioms globalTranslate876_eq
end InitE.FrontendStages.Declarations
