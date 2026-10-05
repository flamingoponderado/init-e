import InitE.FrontendStages.Globals.Output858
import InitE.FrontendStages.Declarations.Data858
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate841
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate858_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified858) =
        some globalOutput858 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal858 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified858) := by trivial
theorem globalException858_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified858) = none := by rfl
#print axioms globalTranslate858_eq
end InitE.FrontendStages.Declarations
