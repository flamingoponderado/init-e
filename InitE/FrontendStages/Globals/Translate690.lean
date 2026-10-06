import InitE.FrontendStages.Globals.Output690
import InitE.FrontendStages.Declarations.Data690
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate674
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate690_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified690) =
        some globalOutput690 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal690 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified690) := by trivial
theorem globalException690_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified690) = none := by rfl
#print axioms globalTranslate690_eq
end InitE.FrontendStages.Declarations
