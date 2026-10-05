import InitE.FrontendStages.Globals.Output926
import InitE.FrontendStages.Declarations.Data926
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate910
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate926_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified926) =
        some globalOutput926 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal926 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified926) := by trivial
theorem globalException926_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified926) = none := by rfl
#print axioms globalTranslate926_eq
end InitE.FrontendStages.Declarations
