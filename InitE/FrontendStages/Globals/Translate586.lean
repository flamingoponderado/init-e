import InitE.FrontendStages.Globals.Output586
import InitE.FrontendStages.Declarations.Data586
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate570
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate586_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified586) =
        some globalOutput586 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal586 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified586) := by trivial
theorem globalException586_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified586) = none := by rfl
#print axioms globalTranslate586_eq
end InitE.FrontendStages.Declarations
