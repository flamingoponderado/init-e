import InitE.FrontendStages.Globals.Output560
import InitE.FrontendStages.Declarations.Data560
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate544
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate560_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified560) =
        some globalOutput560 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal560 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified560) := by trivial
theorem globalException560_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified560) = none := by rfl
#print axioms globalTranslate560_eq
end InitE.FrontendStages.Declarations
