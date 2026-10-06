import InitE.FrontendStages.Globals.Output861
import InitE.FrontendStages.Declarations.Data861
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate844
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate861_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified861) =
        some globalOutput861 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal861 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified861) := by trivial
theorem globalException861_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified861) = none := by rfl
#print axioms globalTranslate861_eq
end InitE.FrontendStages.Declarations
