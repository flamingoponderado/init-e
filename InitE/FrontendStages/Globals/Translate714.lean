import InitE.FrontendStages.Globals.Output714
import InitE.FrontendStages.Declarations.Data714
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate698
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate714_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified714) =
        some globalOutput714 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal714 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified714) := by trivial
theorem globalException714_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified714) = none := by rfl
#print axioms globalTranslate714_eq
end InitE.FrontendStages.Declarations
