import InitE.FrontendStages.Globals.Output330
import InitE.FrontendStages.Declarations.Data330
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate314
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate330_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified330) =
        some globalOutput330 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal330 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified330) := by trivial
theorem globalException330_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified330) = none := by rfl
#print axioms globalTranslate330_eq
end InitE.FrontendStages.Declarations
