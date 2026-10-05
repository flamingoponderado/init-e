import InitE.FrontendStages.Globals.Output576
import InitE.FrontendStages.Declarations.Data576
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate556
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate576_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified576) =
        some globalOutput576 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal576 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified576) := by trivial
theorem globalException576_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified576) = none := by rfl
#print axioms globalTranslate576_eq
end InitE.FrontendStages.Declarations
