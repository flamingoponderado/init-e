import InitE.FrontendStages.Globals.Output762
import InitE.FrontendStages.Declarations.Data762
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate743
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate762_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified762) =
        some globalOutput762 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal762 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified762) := by trivial
theorem globalException762_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified762) = none := by rfl
#print axioms globalTranslate762_eq
end InitE.FrontendStages.Declarations
