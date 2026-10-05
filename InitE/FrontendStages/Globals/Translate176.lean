import InitE.FrontendStages.Globals.Output176
import InitE.FrontendStages.Declarations.Data176
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate160
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate176_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified176) =
        some globalOutput176 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal176 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified176) := by trivial
theorem globalException176_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified176) = none := by rfl
#print axioms globalTranslate176_eq
end InitE.FrontendStages.Declarations
