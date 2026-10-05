import InitE.FrontendStages.Globals.Output252
import InitE.FrontendStages.Declarations.Data252
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate229
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate252_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified252) =
        some globalOutput252 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal252 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified252) := by trivial
theorem globalException252_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified252) = none := by rfl
#print axioms globalTranslate252_eq
end InitE.FrontendStages.Declarations
