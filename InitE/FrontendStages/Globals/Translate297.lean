import InitE.FrontendStages.Globals.Output297
import InitE.FrontendStages.Declarations.Data297
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate281
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate297_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified297) =
        some globalOutput297 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal297 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified297) := by trivial
theorem globalException297_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified297) = none := by rfl
#print axioms globalTranslate297_eq
end InitE.FrontendStages.Declarations
