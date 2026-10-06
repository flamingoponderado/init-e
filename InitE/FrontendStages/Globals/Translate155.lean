import InitE.FrontendStages.Globals.Output155
import InitE.FrontendStages.Declarations.Data155
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate138
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate155_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified155) =
        some globalOutput155 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal155 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified155) := by trivial
theorem globalException155_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified155) = none := by rfl
#print axioms globalTranslate155_eq
end InitE.FrontendStages.Declarations
