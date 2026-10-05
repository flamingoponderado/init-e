import InitE.FrontendStages.Globals.Output480
import InitE.FrontendStages.Declarations.Data480
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate464
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate480_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified480) =
        some globalOutput480 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal480 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified480) := by trivial
theorem globalException480_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified480) = none := by rfl
#print axioms globalTranslate480_eq
end InitE.FrontendStages.Declarations
