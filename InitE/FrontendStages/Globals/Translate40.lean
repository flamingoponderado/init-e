import InitE.FrontendStages.Globals.Output40
import InitE.FrontendStages.Declarations.Data40
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate23
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate40_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified40) =
        some globalOutput40 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal40 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified40) := by trivial
theorem globalException40_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified40) = none := by rfl
#print axioms globalTranslate40_eq
end InitE.FrontendStages.Declarations
