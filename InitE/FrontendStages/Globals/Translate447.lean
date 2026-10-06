import InitE.FrontendStages.Globals.Output447
import InitE.FrontendStages.Declarations.Data447
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate426
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate447_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified447) =
        some globalOutput447 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal447 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified447) := by trivial
theorem globalException447_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified447) = none := by rfl
#print axioms globalTranslate447_eq
end InitE.FrontendStages.Declarations
