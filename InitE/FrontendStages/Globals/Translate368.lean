import InitE.FrontendStages.Globals.Output368
import InitE.FrontendStages.Declarations.Data368
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate345
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate368_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified368) =
        some globalOutput368 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal368 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified368) := by trivial
theorem globalException368_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified368) = none := by rfl
#print axioms globalTranslate368_eq
end InitE.FrontendStages.Declarations
