import InitE.FrontendStages.Globals.Output64
import InitE.FrontendStages.Declarations.Data64
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate48
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate64_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified64) =
        some globalOutput64 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal64 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified64) := by trivial
theorem globalException64_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified64) = none := by rfl
#print axioms globalTranslate64_eq
end InitE.FrontendStages.Declarations
