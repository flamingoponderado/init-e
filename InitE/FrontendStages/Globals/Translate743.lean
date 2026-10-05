import InitE.FrontendStages.Globals.Output743
import InitE.FrontendStages.Declarations.Data743
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate722
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate743_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified743) =
        some globalOutput743 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal743 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified743) := by trivial
theorem globalException743_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified743) = none := by rfl
#print axioms globalTranslate743_eq
end InitE.FrontendStages.Declarations
