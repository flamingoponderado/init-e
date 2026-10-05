import InitE.FrontendStages.Globals.Output780
import InitE.FrontendStages.Declarations.Data780
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate764
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate780_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified780) =
        some globalOutput780 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal780 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified780) := by trivial
theorem globalException780_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified780) = none := by rfl
#print axioms globalTranslate780_eq
end InitE.FrontendStages.Declarations
