import InitE.FrontendStages.Globals.Output767
import InitE.FrontendStages.Declarations.Data767
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate748
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate767_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified767) =
        some globalOutput767 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal767 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified767) := by trivial
theorem globalException767_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified767) = none := by rfl
#print axioms globalTranslate767_eq
end InitE.FrontendStages.Declarations
