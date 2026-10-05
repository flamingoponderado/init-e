import InitE.FrontendStages.Globals.Output23
import InitE.FrontendStages.Declarations.Data23
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate7
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate23_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified23) =
        some globalOutput23 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal23 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified23) := by trivial
theorem globalException23_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified23) = none := by rfl
#print axioms globalTranslate23_eq
end InitE.FrontendStages.Declarations
