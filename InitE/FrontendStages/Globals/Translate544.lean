import InitE.FrontendStages.Globals.Output544
import InitE.FrontendStages.Declarations.Data544
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate528
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate544_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified544) =
        some globalOutput544 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal544 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified544) := by trivial
theorem globalException544_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified544) = none := by rfl
#print axioms globalTranslate544_eq
end InitE.FrontendStages.Declarations
