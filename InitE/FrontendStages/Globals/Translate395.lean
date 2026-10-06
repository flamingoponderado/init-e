import InitE.FrontendStages.Globals.Output395
import InitE.FrontendStages.Declarations.Data395
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate379
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate395_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified395) =
        some globalOutput395 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal395 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified395) := by trivial
theorem globalException395_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified395) = none := by rfl
#print axioms globalTranslate395_eq
end InitE.FrontendStages.Declarations
