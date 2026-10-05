import InitE.FrontendStages.Globals.Output232
import InitE.FrontendStages.Declarations.Data232
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate214
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate232_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified232) =
        some globalOutput232 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal232 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified232) := by trivial
theorem globalException232_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified232) = none := by rfl
#print axioms globalTranslate232_eq
end InitE.FrontendStages.Declarations
