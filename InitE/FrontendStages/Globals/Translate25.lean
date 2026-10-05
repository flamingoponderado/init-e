import InitE.FrontendStages.Globals.Output25
import InitE.FrontendStages.Declarations.Data25
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate25_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified25) =
        some globalOutput25 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal25 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified25) := by trivial
theorem globalException25_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified25) = none := by rfl
#print axioms globalTranslate25_eq
end InitE.FrontendStages.Declarations
