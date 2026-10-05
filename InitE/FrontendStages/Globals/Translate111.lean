import InitE.FrontendStages.Globals.Output111
import InitE.FrontendStages.Declarations.Data111
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate89
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate111_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified111) =
        some globalOutput111 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal111 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified111) := by trivial
theorem globalException111_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified111) = none := by rfl
#print axioms globalTranslate111_eq
end InitE.FrontendStages.Declarations
