import InitE.FrontendStages.Globals.Output596
import InitE.FrontendStages.Declarations.Data596
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate580
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate596_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified596) =
        some globalOutput596 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal596 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified596) := by trivial
theorem globalException596_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified596) = none := by rfl
#print axioms globalTranslate596_eq
end InitE.FrontendStages.Declarations
