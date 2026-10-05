import InitE.FrontendStages.Globals.Output445
import InitE.FrontendStages.Declarations.Data445
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate424
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate445_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified445) =
        some globalOutput445 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal445 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified445) := by trivial
theorem globalException445_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified445) = none := by rfl
#print axioms globalTranslate445_eq
end InitE.FrontendStages.Declarations
