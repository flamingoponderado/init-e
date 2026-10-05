import InitE.FrontendStages.Globals.Output329
import InitE.FrontendStages.Declarations.Data329
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate313
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate329_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified329) =
        some globalOutput329 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal329 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified329) := by trivial
theorem globalException329_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified329) = none := by rfl
#print axioms globalTranslate329_eq
end InitE.FrontendStages.Declarations
