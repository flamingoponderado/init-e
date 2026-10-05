import InitE.FrontendStages.Globals.Output835
import InitE.FrontendStages.Declarations.Data835
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate819
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate835_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified835) =
        some globalOutput835 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal835 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified835) := by trivial
theorem globalException835_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified835) = none := by rfl
#print axioms globalTranslate835_eq
end InitE.FrontendStages.Declarations
