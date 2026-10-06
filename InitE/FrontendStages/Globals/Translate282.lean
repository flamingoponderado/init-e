import InitE.FrontendStages.Globals.Output282
import InitE.FrontendStages.Declarations.Data282
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate266
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate282_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified282) =
        some globalOutput282 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal282 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified282) := by trivial
theorem globalException282_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified282) = none := by rfl
#print axioms globalTranslate282_eq
end InitE.FrontendStages.Declarations
