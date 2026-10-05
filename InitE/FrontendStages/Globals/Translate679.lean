import InitE.FrontendStages.Globals.Output679
import InitE.FrontendStages.Declarations.Data679
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate648
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate679_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified679) =
        some globalOutput679 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal679 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified679) := by trivial
theorem globalException679_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified679) = none := by rfl
#print axioms globalTranslate679_eq
end InitE.FrontendStages.Declarations
