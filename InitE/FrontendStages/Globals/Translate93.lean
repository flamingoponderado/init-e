import InitE.FrontendStages.Globals.Output93
import InitE.FrontendStages.Declarations.Data93
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate74
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate93_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified93) =
        some globalOutput93 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal93 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified93) := by trivial
theorem globalException93_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified93) = none := by rfl
#print axioms globalTranslate93_eq
end InitE.FrontendStages.Declarations
