import InitE.FrontendStages.Globals.Output823
import InitE.FrontendStages.Declarations.Data823
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate807
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate823_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified823) =
        some globalOutput823 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal823 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified823) := by trivial
theorem globalException823_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified823) = none := by rfl
#print axioms globalTranslate823_eq
end InitE.FrontendStages.Declarations
