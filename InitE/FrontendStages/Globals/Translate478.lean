import InitE.FrontendStages.Globals.Output478
import InitE.FrontendStages.Declarations.Data478
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate462
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate478_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified478) =
        some globalOutput478 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal478 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified478) := by trivial
theorem globalException478_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified478) = none := by rfl
#print axioms globalTranslate478_eq
end InitE.FrontendStages.Declarations
