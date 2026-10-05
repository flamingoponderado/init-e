import InitE.FrontendStages.Globals.Output338
import InitE.FrontendStages.Declarations.Data338
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate322
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate338_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified338) =
        some globalOutput338 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal338 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified338) := by trivial
theorem globalException338_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified338) = none := by rfl
#print axioms globalTranslate338_eq
end InitE.FrontendStages.Declarations
