import InitE.FrontendStages.Globals.Output771
import InitE.FrontendStages.Declarations.Data771
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate752
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate771_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified771) =
        some globalOutput771 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal771 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified771) := by trivial
theorem globalException771_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified771) = none := by rfl
#print axioms globalTranslate771_eq
end InitE.FrontendStages.Declarations
