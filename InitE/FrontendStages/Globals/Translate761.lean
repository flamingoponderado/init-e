import InitE.FrontendStages.Globals.Output761
import InitE.FrontendStages.Declarations.Data761
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate742
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate761_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified761) =
        some globalOutput761 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal761 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified761) := by trivial
theorem globalException761_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified761) = none := by rfl
#print axioms globalTranslate761_eq
end InitE.FrontendStages.Declarations
