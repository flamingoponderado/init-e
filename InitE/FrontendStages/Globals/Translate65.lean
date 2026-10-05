import InitE.FrontendStages.Globals.Output65
import InitE.FrontendStages.Declarations.Data65
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate49
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate65_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified65) =
        some globalOutput65 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal65 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified65) := by trivial
theorem globalException65_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified65) = none := by rfl
#print axioms globalTranslate65_eq
end InitE.FrontendStages.Declarations
