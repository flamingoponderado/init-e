import InitE.FrontendStages.Globals.Output830
import InitE.FrontendStages.Declarations.Data830
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate814
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate830_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified830) =
        some globalOutput830 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal830 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified830) := by trivial
theorem globalException830_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified830) = none := by rfl
#print axioms globalTranslate830_eq
end InitE.FrontendStages.Declarations
