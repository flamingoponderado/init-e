import InitE.FrontendStages.Globals.Output67
import InitE.FrontendStages.Declarations.Data67
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate51
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate67_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified67) =
        some globalOutput67 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal67 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified67) := by trivial
theorem globalException67_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified67) = none := by rfl
#print axioms globalTranslate67_eq
end InitE.FrontendStages.Declarations
