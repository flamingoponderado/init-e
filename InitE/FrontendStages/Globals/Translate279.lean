import InitE.FrontendStages.Globals.Output279
import InitE.FrontendStages.Declarations.Data279
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate263
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate279_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified279) =
        some globalOutput279 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal279 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified279) := by trivial
theorem globalException279_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified279) = none := by rfl
#print axioms globalTranslate279_eq
end InitE.FrontendStages.Declarations
