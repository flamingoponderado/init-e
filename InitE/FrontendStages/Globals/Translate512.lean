import InitE.FrontendStages.Globals.Output512
import InitE.FrontendStages.Declarations.Data512
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate496
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate512_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified512) =
        some globalOutput512 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal512 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified512) := by trivial
theorem globalException512_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified512) = none := by rfl
#print axioms globalTranslate512_eq
end InitE.FrontendStages.Declarations
