import InitE.FrontendStages.Globals.Output775
import InitE.FrontendStages.Declarations.Data775
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate756
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate775_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified775) =
        some globalOutput775 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal775 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified775) := by trivial
theorem globalException775_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified775) = none := by rfl
#print axioms globalTranslate775_eq
end InitE.FrontendStages.Declarations
