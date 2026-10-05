import InitE.FrontendStages.Globals.Output133
import InitE.FrontendStages.Declarations.Data133
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate117
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate133_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified133) =
        some globalOutput133 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal133 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified133) := by trivial
theorem globalException133_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified133) = none := by rfl
#print axioms globalTranslate133_eq
end InitE.FrontendStages.Declarations
