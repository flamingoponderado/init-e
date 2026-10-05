import InitE.FrontendStages.Globals.Output117
import InitE.FrontendStages.Declarations.Data117
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate98
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate117_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified117) =
        some globalOutput117 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal117 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified117) := by trivial
theorem globalException117_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified117) = none := by rfl
#print axioms globalTranslate117_eq
end InitE.FrontendStages.Declarations
