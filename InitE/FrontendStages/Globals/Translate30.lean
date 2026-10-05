import InitE.FrontendStages.Globals.Output30
import InitE.FrontendStages.Declarations.Data30
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate14
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate30_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified30) =
        some globalOutput30 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal30 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified30) := by trivial
theorem globalException30_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified30) = none := by rfl
#print axioms globalTranslate30_eq
end InitE.FrontendStages.Declarations
