import InitE.FrontendStages.Globals.Output779
import InitE.FrontendStages.Declarations.Data779
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate763
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate779_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified779) =
        some globalOutput779 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal779 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified779) := by trivial
theorem globalException779_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified779) = none := by rfl
#print axioms globalTranslate779_eq
end InitE.FrontendStages.Declarations
