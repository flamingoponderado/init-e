import InitE.FrontendStages.Globals.Output199
import InitE.FrontendStages.Declarations.Data199
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate179
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate199_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified199) =
        some globalOutput199 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal199 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified199) := by trivial
theorem globalException199_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified199) = none := by rfl
#print axioms globalTranslate199_eq
end InitE.FrontendStages.Declarations
