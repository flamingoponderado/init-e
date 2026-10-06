import InitE.FrontendStages.Globals.Output56
import InitE.FrontendStages.Declarations.Data56
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate40
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate56_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified56) =
        some globalOutput56 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal56 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified56) := by trivial
theorem globalException56_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified56) = none := by rfl
#print axioms globalTranslate56_eq
end InitE.FrontendStages.Declarations
