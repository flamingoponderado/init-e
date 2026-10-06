import InitE.FrontendStages.Globals.Output852
import InitE.FrontendStages.Declarations.Data852
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate835
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate852_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified852) =
        some globalOutput852 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal852 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified852) := by trivial
theorem globalException852_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified852) = none := by rfl
#print axioms globalTranslate852_eq
end InitE.FrontendStages.Declarations
