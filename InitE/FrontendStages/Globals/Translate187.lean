import InitE.FrontendStages.Globals.Output187
import InitE.FrontendStages.Declarations.Data187
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate171
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate187_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified187) =
        some globalOutput187 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal187 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified187) := by trivial
theorem globalException187_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified187) = none := by rfl
#print axioms globalTranslate187_eq
end InitE.FrontendStages.Declarations
