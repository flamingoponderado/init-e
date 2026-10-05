import InitE.FrontendStages.Globals.Output310
import InitE.FrontendStages.Declarations.Data310
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate293
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate310_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified310) =
        some globalOutput310 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal310 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified310) := by trivial
theorem globalException310_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified310) = none := by rfl
#print axioms globalTranslate310_eq
end InitE.FrontendStages.Declarations
