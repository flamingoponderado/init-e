import InitE.FrontendStages.Globals.Output857
import InitE.FrontendStages.Declarations.Data857
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate840
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate857_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified857) =
        some globalOutput857 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal857 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified857) := by trivial
theorem globalException857_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified857) = none := by rfl
#print axioms globalTranslate857_eq
end InitE.FrontendStages.Declarations
