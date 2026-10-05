import InitE.FrontendStages.Globals.Output713
import InitE.FrontendStages.Declarations.Data713
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate697
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate713_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified713) =
        some globalOutput713 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal713 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified713) := by trivial
theorem globalException713_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified713) = none := by rfl
#print axioms globalTranslate713_eq
end InitE.FrontendStages.Declarations
