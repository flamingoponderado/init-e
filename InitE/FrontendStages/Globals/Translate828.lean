import InitE.FrontendStages.Globals.Output828
import InitE.FrontendStages.Declarations.Data828
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate812
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate828_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified828) =
        some globalOutput828 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal828 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified828) := by trivial
theorem globalException828_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified828) = none := by rfl
#print axioms globalTranslate828_eq
end InitE.FrontendStages.Declarations
