import InitE.FrontendStages.Globals.Output87
import InitE.FrontendStages.Declarations.Data87
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate71
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate87_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified87) =
        some globalOutput87 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal87 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified87) := by trivial
theorem globalException87_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified87) = none := by rfl
#print axioms globalTranslate87_eq
end InitE.FrontendStages.Declarations
