import InitE.FrontendStages.Globals.Output61
import InitE.FrontendStages.Declarations.Data61
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate45
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate61_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified61) =
        some globalOutput61 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal61 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified61) := by trivial
theorem globalException61_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified61) = none := by rfl
#print axioms globalTranslate61_eq
end InitE.FrontendStages.Declarations
