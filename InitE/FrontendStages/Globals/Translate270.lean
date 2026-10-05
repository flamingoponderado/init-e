import InitE.FrontendStages.Globals.Output270
import InitE.FrontendStages.Declarations.Data270
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate254
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate270_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified270) =
        some globalOutput270 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal270 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified270) := by trivial
theorem globalException270_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified270) = none := by rfl
#print axioms globalTranslate270_eq
end InitE.FrontendStages.Declarations
