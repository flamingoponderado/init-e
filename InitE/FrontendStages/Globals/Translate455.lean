import InitE.FrontendStages.Globals.Output455
import InitE.FrontendStages.Declarations.Data455
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate434
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate455_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified455) =
        some globalOutput455 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal455 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified455) := by trivial
theorem globalException455_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified455) = none := by rfl
#print axioms globalTranslate455_eq
end InitE.FrontendStages.Declarations
