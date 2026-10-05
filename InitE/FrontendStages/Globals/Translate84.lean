import InitE.FrontendStages.Globals.Output84
import InitE.FrontendStages.Declarations.Data84
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate68
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate84_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified84) =
        some globalOutput84 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal84 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified84) := by trivial
theorem globalException84_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified84) = none := by rfl
#print axioms globalTranslate84_eq
end InitE.FrontendStages.Declarations
