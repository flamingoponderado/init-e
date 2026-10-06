import InitE.FrontendStages.Globals.Output483
import InitE.FrontendStages.Declarations.Data483
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate467
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate483_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified483) =
        some globalOutput483 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal483 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified483) := by trivial
theorem globalException483_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified483) = none := by rfl
#print axioms globalTranslate483_eq
end InitE.FrontendStages.Declarations
