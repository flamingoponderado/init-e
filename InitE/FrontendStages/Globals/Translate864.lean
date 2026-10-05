import InitE.FrontendStages.Globals.Output864
import InitE.FrontendStages.Declarations.Data864
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate847
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate864_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified864) =
        some globalOutput864 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal864 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified864) := by trivial
theorem globalException864_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified864) = none := by rfl
#print axioms globalTranslate864_eq
end InitE.FrontendStages.Declarations
