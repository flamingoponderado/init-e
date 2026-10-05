import InitE.FrontendStages.Globals.Output526
import InitE.FrontendStages.Declarations.Data526
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate510
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate526_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified526) =
        some globalOutput526 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal526 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified526) := by trivial
theorem globalException526_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified526) = none := by rfl
#print axioms globalTranslate526_eq
end InitE.FrontendStages.Declarations
