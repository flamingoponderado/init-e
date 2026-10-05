import InitE.FrontendStages.Globals.Output380
import InitE.FrontendStages.Declarations.Data380
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate364
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate380_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified380) =
        some globalOutput380 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal380 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified380) := by trivial
theorem globalException380_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified380) = none := by rfl
#print axioms globalTranslate380_eq
end InitE.FrontendStages.Declarations
