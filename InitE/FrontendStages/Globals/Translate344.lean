import InitE.FrontendStages.Globals.Output344
import InitE.FrontendStages.Declarations.Data344
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate328
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate344_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified344) =
        some globalOutput344 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal344 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified344) := by trivial
theorem globalException344_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified344) = none := by rfl
#print axioms globalTranslate344_eq
end InitE.FrontendStages.Declarations
