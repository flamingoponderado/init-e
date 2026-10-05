import InitE.FrontendStages.Globals.Output416
import InitE.FrontendStages.Declarations.Data416
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate395
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate416_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified416) =
        some globalOutput416 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal416 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified416) := by trivial
theorem globalException416_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified416) = none := by rfl
#print axioms globalTranslate416_eq
end InitE.FrontendStages.Declarations
