import InitE.FrontendStages.Globals.Output855
import InitE.FrontendStages.Declarations.Data855
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate838
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate855_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified855) =
        some globalOutput855 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal855 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified855) := by trivial
theorem globalException855_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified855) = none := by rfl
#print axioms globalTranslate855_eq
end InitE.FrontendStages.Declarations
