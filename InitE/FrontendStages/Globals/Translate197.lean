import InitE.FrontendStages.Globals.Output197
import InitE.FrontendStages.Declarations.Data197
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate177
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate197_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified197) =
        some globalOutput197 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal197 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified197) := by trivial
theorem globalException197_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified197) = none := by rfl
#print axioms globalTranslate197_eq
end InitE.FrontendStages.Declarations
