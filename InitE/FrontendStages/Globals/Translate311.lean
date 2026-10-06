import InitE.FrontendStages.Globals.Output311
import InitE.FrontendStages.Declarations.Data311
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate294
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate311_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified311) =
        some globalOutput311 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal311 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified311) := by trivial
theorem globalException311_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified311) = none := by rfl
#print axioms globalTranslate311_eq
end InitE.FrontendStages.Declarations
