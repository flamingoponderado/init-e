import InitE.FrontendStages.Globals.Output324
import InitE.FrontendStages.Declarations.Data324
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate308
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate324_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified324) =
        some globalOutput324 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal324 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified324) := by trivial
theorem globalException324_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified324) = none := by rfl
#print axioms globalTranslate324_eq
end InitE.FrontendStages.Declarations
